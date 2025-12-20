import 'package:supabase/supabase.dart';

import '../../../../core/services/auth_service.dart';
import '../../../generic/data/generic_abstract_of_data_source.dart';
import '../model/product_model.dart';

class ProductModelRemoteDataSource
    extends GenericAbstractOfDataSource<ProductModel> {
  final SupabaseClient _client;
  final AuthService _authService;
  static const String _tableName = 'products';

  ProductModelRemoteDataSource({
    required SupabaseClient client,
    required AuthService authService,
  }) : _client = client,
       _authService = authService;

  @override
  Future<ProductModel?> create(ProductModel item) async {
    return await _authService.executeWithAuth(() async {
      final existingProduct = await getById(item.id);

      if (existingProduct != null) {
        print('Produto já existe, atualizando: ${item.id}');
        await update(item);
        return item;
      }

      await _client.from(_tableName).insert({
        'id': item.id,
        'store_id': item.storeId,
        'name': item.name,
        'slug': item.slug,
        'description': item.description,
        'short_description': item.shortDescription,
        'category_id': item.categoryId,
        'subcategory_id': item.subcategoryId,
        'tags': item.tags,
        'price': item.price,
        'compare_at_price': item.compareAtPrice,
        'cost_price': item.costPrice,
        'currency': item.currency,
        'stock': item.stock,
        'track_inventory': item.trackInventory,
        'low_stock_threshold': item.lowStockThreshold,
        'main_image': item.mainImage,
        'images': item.images,
        'sku': item.sku,
        'barcode': item.barcode,
        'weight': item.weight,
        'length': item.length,
        'width': item.width,
        'height': item.height,
        'condition': item.condition.name,
        'variants': item.variants,
        'status': item.status.name,
        'is_active': item.isActive,
        'is_featured': item.isFeatured,
        'is_digital': item.isDigital,
        'meta_title': item.metaTitle,
        'meta_description': item.metaDescription,
        'view_count': item.viewCount,
        'favorite_count': item.favoriteCount,
        'sold_count': item.soldCount,
        'rating': item.rating,
        'review_count': item.reviewCount,
        'created_at': item.created_at.toIso8601String(),
        'updated_at': item.updated_at.toIso8601String(),
        'published_at': item.publishedAt?.toIso8601String(),
        'metadata': item.metadata,
      });

      print('Produto criado com sucesso no Supabase');
      return item;
    });
  }

  @override
  Future<ProductModel?> getById(String id) async {
    return await _authService.executeWithAuth(() async {
      print('ProductDataSource: Buscando produto com id: $id');

      final response = await _client
          .from(_tableName)
          .select()
          .eq('id', id)
          .maybeSingle();

      print('ProductDataSource: Resposta recebida: $response');

      if (response == null) {
        print('ProductDataSource: Nenhum produto encontrado');
        return null;
      }

      print('ProductDataSource: Produto encontrado, mapeando...');
      return _mapToProductModel(response);
    });
  }

  @override
  Future<List<ProductModel>?> getAll(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  ) async {
    print(
      'ProductDataSource: Buscando todos os produtos com filtros: '
      'filter1=$filter1, filter2=$filter2, filter3=$filter3, filter4=$filter4',
    );
    return await _authService.executeWithAuth(() async {
      var query = _client.from(_tableName).select();

      // filter1: store_id
      if (filter1 != null && filter1.isNotEmpty) {
        query = query.eq('store_id', filter1);
      }

      // filter2: category_id
      if (filter2 != null && filter2.isNotEmpty) {
        query = query.eq('category_id', filter2);
      }

      // filter3: status
      if (filter3 != null && filter3.isNotEmpty) {
        query = query.eq('status', filter3);
      }

      // filter4: is_featured
      if (filter4 != null && filter4.isNotEmpty) {
        query = query.eq('is_featured', filter4 == 'true');
      }

      final response = await query.order('created_at', ascending: false);
      print('produtos$response');
      if (response.isEmpty) return <ProductModel>[];
      print('produtos$response');
      return response.map<ProductModel>(_mapToProductModel).toList();
    });
  }

  @override
  Future<void> update(ProductModel item) async {
    return await _authService.executeWithAuth(() async {
      await _client
          .from(_tableName)
          .update({
            'store_id': item.storeId,
            'name': item.name,
            'slug': item.slug,
            'description': item.description,
            'short_description': item.shortDescription,
            'category_id': item.categoryId,
            'subcategory_id': item.subcategoryId,
            'tags': item.tags,
            'price': item.price,
            'compare_at_price': item.compareAtPrice,
            'cost_price': item.costPrice,
            'currency': item.currency,
            'stock': item.stock,
            'track_inventory': item.trackInventory,
            'low_stock_threshold': item.lowStockThreshold,
            'main_image': item.mainImage,
            'images': item.images,
            'sku': item.sku,
            'barcode': item.barcode,
            'weight': item.weight,
            'length': item.length,
            'width': item.width,
            'height': item.height,
            'condition': item.condition.name,
            'variants': item.variants,
            'status': item.status.name,
            'is_active': item.isActive,
            'is_featured': item.isFeatured,
            'is_digital': item.isDigital,
            'meta_title': item.metaTitle,
            'meta_description': item.metaDescription,
            'view_count': item.viewCount,
            'favorite_count': item.favoriteCount,
            'sold_count': item.soldCount,
            'rating': item.rating,
            'review_count': item.reviewCount,
            'updated_at': DateTime.now().toIso8601String(),
            'published_at': item.publishedAt?.toIso8601String(),
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

  ProductModel _mapToProductModel(Map<String, dynamic> data) {
    return ProductModel(
      id: data['id'] as String,
      storeId: data['store_id'] as String,
      name: data['name'] as String,
      slug: data['slug'] as String,
      description: data['description'] as String?,
      shortDescription: data['short_description'] as String?,
      categoryId: data['category_id'] as String?,
      subcategoryId: data['subcategory_id'] as String?,
      tags: List<String>.from(data['tags'] ?? []),
      price: (data['price'] as num).toDouble(),
      compareAtPrice: data['compare_at_price'] != null
          ? (data['compare_at_price'] as num).toDouble()
          : null,
      costPrice: data['cost_price'] != null
          ? (data['cost_price'] as num).toDouble()
          : null,
      currency: data['currency'] as String? ?? 'MZN',
      stock: data['stock'] as int? ?? 0,
      trackInventory: data['track_inventory'] as bool? ?? false,
      lowStockThreshold: data['low_stock_threshold'] as int?,
      mainImage: data['main_image'] as String?,
      images: List<String>.from(data['images'] ?? []),
      sku: data['sku'] as String?,
      barcode: data['barcode'] as String?,
      weight: data['weight'] != null
          ? (data['weight'] as num).toDouble()
          : null,
      length: data['length'] != null
          ? (data['length'] as num).toDouble()
          : null,
      width: data['width'] != null ? (data['width'] as num).toDouble() : null,
      height: data['height'] != null
          ? (data['height'] as num).toDouble()
          : null,
      condition: ProductCondition.values.firstWhere(
        (e) => e.name == data['condition'],
        orElse: () => ProductCondition.newProduct,
      ),
      variants: data['variants'] as String?,
      status: ProductStatus.values.firstWhere(
        (e) => e.name == data['status'],
        orElse: () => ProductStatus.active,
      ),
      isActive: data['is_active'] as bool? ?? true,
      isFeatured: data['is_featured'] as bool? ?? false,
      isDigital: data['is_digital'] as bool? ?? false,
      metaTitle: data['meta_title'] as String?,
      metaDescription: data['meta_description'] as String?,
      viewCount: data['view_count'] as int? ?? 0,
      favoriteCount: data['favorite_count'] as int? ?? 0,
      soldCount: data['sold_count'] as int? ?? 0,
      rating: data['rating'] != null ? (data['rating'] as num).toDouble() : 0.0,
      reviewCount: data['review_count'] as int? ?? 0,
      created_at: DateTime.parse(data['created_at'] as String),
      updated_at: DateTime.parse(data['updated_at'] as String),
      publishedAt: data['published_at'] != null
          ? DateTime.parse(data['published_at'] as String)
          : null,
      metadata: data['metadata'] as String?,
    );
  }

  // Métodos auxiliares específicos
  Future<ProductModel?> getBySlug(String storeId, String slug) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('store_id', storeId)
          .eq('slug', slug)
          .maybeSingle();

      if (response == null) return null;
      return _mapToProductModel(response);
    });
  }

  Future<List<ProductModel>?> getByStoreId(String storeId) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('store_id', storeId)
          .order('created_at', ascending: false);

      if (response.isEmpty) return <ProductModel>[];
      return response.map<ProductModel>(_mapToProductModel).toList();
    });
  }

  Future<List<ProductModel>?> getFeaturedProducts({int limit = 10}) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('is_featured', true)
          .eq('is_active', true)
          .order('view_count', ascending: false)
          .limit(limit);

      if (response.isEmpty) return <ProductModel>[];
      return response.map<ProductModel>(_mapToProductModel).toList();
    });
  }

  Future<void> incrementViewCount(String id) async {
    return await _authService.executeWithAuth(() async {
      await _client.rpc('increment_product_views', params: {'product_id': id});
    });
  }

  Future<void> updateStock(String id, int newStock) async {
    return await _authService.executeWithAuth(() async {
      await _client
          .from(_tableName)
          .update({
            'stock': newStock,
            'updated_at': DateTime.now().toIso8601String(),
          })
          .eq('id', id);
    });
  }
}
