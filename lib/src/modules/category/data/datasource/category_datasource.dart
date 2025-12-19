import 'package:supabase/supabase.dart';

import '../../../../core/services/auth_service.dart';
import '../../../generic/data/generic_abstract_of_data_source.dart';
import '../model/category_model.dart';

class CategoryModelRemoteDataSource
    extends GenericAbstractOfDataSource<CategoryModel> {
  final SupabaseClient _client;
  final AuthService _authService;
  static const String _tableName = 'categories';

  CategoryModelRemoteDataSource({
    required SupabaseClient client,
    required AuthService authService,
  }) : _client = client,
       _authService = authService;

  @override
  Future<CategoryModel?> create(CategoryModel item) async {
    return await _authService.executeWithAuth(() async {
      final existingCategory = await getById(item.id);

      if (existingCategory != null) {
        print('Categoria já existe, atualizando: ${item.id}');
        await update(item);
        return item;
      }

      await _client.from(_tableName).insert({
        'id': item.id,
        'name': item.name,
        'slug': item.slug,
        'description': item.description,
        'icon': item.icon,
        'image': item.image,
        'parent_id': item.parentId,
        'order': item.order,
        'is_active': item.isActive,
        'created_at': item.created_at.toIso8601String(),
        'updated_at': item.updated_at.toIso8601String(),
        'metadata': item.metadata,
      });

      print('Categoria criada com sucesso no Supabase');
      return item;
    });
  }

  @override
  Future<CategoryModel?> getById(String id) async {
    return await _authService.executeWithAuth(() async {
      print('CategoryDataSource: Buscando categoria com id: $id');

      final response = await _client
          .from(_tableName)
          .select()
          .eq('id', id)
          .maybeSingle();

      print('CategoryDataSource: Resposta recebida: $response');

      if (response == null) {
        print('CategoryDataSource: Nenhuma categoria encontrada');
        return null;
      }

      print('CategoryDataSource: Categoria encontrada, mapeando...');
      return _mapToCategoryModel(response);
    });
  }

  @override
  Future<List<CategoryModel>?> getAll(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  ) async {
    print(
      'CategoryDataSource: Buscando todas as categorias com filtros: '
      'filter1=$filter1, filter2=$filter2, filter3=$filter3, filter4=$filter4',
    );
    return await _authService.executeWithAuth(() async {
      var query = _client.from(_tableName).select();

      // filter1: parent_id (null para categorias principais)
      if (filter1 != null && filter1.isNotEmpty) {
        if (filter1 == 'null') {
          query = query.isFilter('parent_id', null);
        } else {
          query = query.eq('parent_id', filter1);
        }
      }

      // filter2: is_active
      if (filter2 != null && filter2.isNotEmpty) {
        query = query.eq('is_active', filter2 == 'true');
      }

      final response = await query.order('order', ascending: true);

      if (response.isEmpty) return <CategoryModel>[];

      return response.map<CategoryModel>(_mapToCategoryModel).toList();
    });
  }

  @override
  Future<void> update(CategoryModel item) async {
    return await _authService.executeWithAuth(() async {
      await _client
          .from(_tableName)
          .update({
            'name': item.name,
            'slug': item.slug,
            'description': item.description,
            'icon': item.icon,
            'image': item.image,
            'parent_id': item.parentId,
            'order': item.order,
            'is_active': item.isActive,
            'updated_at': DateTime.now().toIso8601String(),
            'metadata': item.metadata,
          })
          .eq('id', item.id);
    });
  }

  @override
  Future<void> delete(String id) async {
    return await _authService.executeWithAuth(() async {
      await _client.from(_tableName).delete().eq('id', id);
    });
  }

  CategoryModel _mapToCategoryModel(Map<String, dynamic> data) {
    return CategoryModel(
      id: data['id'] as String,
      name: data['name'] as String,
      slug: data['slug'] as String,
      description: data['description'] as String?,
      icon: data['icon'] as String?,
      image: data['image'] as String?,
      parentId: data['parent_id'] as String?,
      order: data['order'] as int? ?? 0,
      isActive: data['is_active'] as bool? ?? true,
      created_at: DateTime.parse(data['created_at'] as String),
      updated_at: DateTime.parse(data['updated_at'] as String),
      metadata: data['metadata'] as Map<String, dynamic>?,
    );
  }

  // Métodos auxiliares específicos
  Future<CategoryModel?> getBySlug(String slug) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('slug', slug)
          .maybeSingle();

      if (response == null) return null;
      return _mapToCategoryModel(response);
    });
  }

  Future<List<CategoryModel>?> getMainCategories() async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .isFilter('parent_id', null)
          .eq('is_active', true)
          .order('order', ascending: true);

      if (response.isEmpty) return <CategoryModel>[];
      return response.map<CategoryModel>(_mapToCategoryModel).toList();
    });
  }

  Future<List<CategoryModel>?> getSubcategories(String parentId) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('parent_id', parentId)
          .eq('is_active', true)
          .order('order', ascending: true);

      if (response.isEmpty) return <CategoryModel>[];
      return response.map<CategoryModel>(_mapToCategoryModel).toList();
    });
  }
}
