import 'package:supabase/supabase.dart';

import '../../../../core/services/auth_service.dart';
import '../../../generic/data/generic_abstract_of_data_source.dart';
import '../model/store_model.dart';

class StoreModelRemoteDataSource
    extends GenericAbstractOfDataSource<StoreModel> {
  final SupabaseClient _client;
  final AuthService _authService;
  static const String _tableName = 'stores';

  StoreModelRemoteDataSource({
    required SupabaseClient client,
    required AuthService authService,
  }) : _client = client,
       _authService = authService;

  @override
  Future<StoreModel?> create(StoreModel item) async {
    return await _authService.executeWithAuth(() async {
      final existingStore = await getById(item.id);

      if (existingStore != null) {
        print('Loja já existe, atualizando: ${item.id}');
        await update(item);
        return item;
      }

      await _client.from(_tableName).insert({
        'id': item.id,
        'seller_id': item.sellerId,
        'name': item.name,
        'slug': item.slug,
        'description': item.description,
        'logo': item.logo,
        'cover_image': item.coverImage,
        'images': item.images,
        'store_type': item.storeType.name,
        'address': item.address,
        'city': item.city,
        'province_code': item.provinceCode,
        'country_code': item.countryCode,
        'postal_code': item.postalCode,
        'latitude': item.latitude,
        'longitude': item.longitude,
        'phone': item.phone,
        'whatsapp': item.whatsapp,
        'email': item.email,
        'website': item.website,
        'facebook': item.facebook,
        'instagram': item.instagram,
        'business_hours': item.businessHours,
        'status': item.status.name,
        'is_active': item.isActive,
        'is_verified': item.isVerified,
        'accepts_online_payment': item.acceptsOnlinePayment,
        'accepts_cash': item.acceptsCash,
        'has_delivery': item.hasDelivery,
        'meta_title': item.metaTitle,
        'meta_description': item.metaDescription,
        'keywords': item.keywords,
        'theme': item.theme,
        'view_count': item.viewCount,
        'rating': item.rating,
        'review_count': item.reviewCount,
        'created_at': item.created_at.toIso8601String(),
        'updated_at': item.updated_at.toIso8601String(),
        'published_at': item.publishedAt?.toIso8601String(),
        'metadata': item.metadata,
      });

      print('Loja criada com sucesso no Supabase');
      return item;
    });
  }

  @override
  Future<StoreModel?> getById(String id) async {
    return await _authService.executeWithAuth(() async {
      print('StoreDataSource: Buscando loja com id: $id');

      final response = await _client
          .from(_tableName)
          .select()
          .eq('id', id)
          .maybeSingle();

      print('StoreDataSource: Resposta recebida: $response');

      if (response == null) {
        print('StoreDataSource: Nenhuma loja encontrada');
        return null;
      }

      print('StoreDataSource: Loja encontrada, mapeando...');
      return _mapToStoreModel(response);
    });
  }

  @override
  Future<List<StoreModel>?> getAll(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  ) async {
    print(
      'StoreDataSource: Buscando todas as lojas com filtros: '
      'filter1=$filter1, filter2=$filter2, filter3=$filter3, filter4=$filter4',
    );
    return await _authService.executeWithAuth(() async {
      var query = _client.from(_tableName).select();

      // filter1: seller_id
      if (filter1 != null && filter1.isNotEmpty) {
        query = query.eq('seller_id', filter1);
      }

      // filter2: status
      if (filter2 != null && filter2.isNotEmpty) {
        query = query.eq('status', filter2);
      }

      // filter3: province_code
      if (filter3 != null && filter3.isNotEmpty) {
        query = query.eq('province_code', filter3);
      }

      // filter4: is_active
      if (filter4 != null && filter4.isNotEmpty) {
        query = query.eq('is_active', filter4 == 'true');
      }

      final response = await query.order('created_at', ascending: false);

      if (response.isEmpty) return <StoreModel>[];

      return response.map<StoreModel>(_mapToStoreModel).toList();
    });
  }

  @override
  Future<void> update(StoreModel item) async {
    return await _authService.executeWithAuth(() async {
      await _client
          .from(_tableName)
          .update({
            'seller_id': item.sellerId,
            'name': item.name,
            'slug': item.slug,
            'description': item.description,
            'logo': item.logo,
            'cover_image': item.coverImage,
            'images': item.images,
            'store_type': item.storeType.name,
            'address': item.address,
            'city': item.city,
            'province_code': item.provinceCode,
            'country_code': item.countryCode,
            'postal_code': item.postalCode,
            'latitude': item.latitude,
            'longitude': item.longitude,
            'phone': item.phone,
            'whatsapp': item.whatsapp,
            'email': item.email,
            'website': item.website,
            'facebook': item.facebook,
            'instagram': item.instagram,
            'business_hours': item.businessHours,
            'status': item.status.name,
            'is_active': item.isActive,
            'is_verified': item.isVerified,
            'accepts_online_payment': item.acceptsOnlinePayment,
            'accepts_cash': item.acceptsCash,
            'has_delivery': item.hasDelivery,
            'meta_title': item.metaTitle,
            'meta_description': item.metaDescription,
            'keywords': item.keywords,
            'theme': item.theme,
            'view_count': item.viewCount,
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

  StoreModel _mapToStoreModel(Map<String, dynamic> data) {
    return StoreModel(
      id: data['id'] as String,
      sellerId: data['seller_id'] as String,
      name: data['name'] as String,
      slug: data['slug'] as String,
      description: data['description'] as String?,
      logo: data['logo'] as String?,
      coverImage: data['cover_image'] as String?,
      images: List<String>.from(data['images'] ?? []),
      storeType: StoreType.values.firstWhere(
        (e) => e.name == data['store_type'],
        orElse: () => StoreType.online,
      ),
      address: data['address'] as String?,
      city: data['city'] as String?,
      provinceCode: data['province_code'] as String? ?? '',
      countryCode: data['country_code'] as String? ?? 'MZ',
      postalCode: data['postal_code'] as String?,
      latitude: data['latitude'] != null
          ? (data['latitude'] as num).toDouble()
          : null,
      longitude: data['longitude'] != null
          ? (data['longitude'] as num).toDouble()
          : null,
      phone: data['phone'] as String?,
      whatsapp: data['whatsapp'] as String?,
      email: data['email'] as String?,
      website: data['website'] as String?,
      facebook: data['facebook'] as String?,
      instagram: data['instagram'] as String?,
      businessHours: data['business_hours'] as Map<String, dynamic>?,
      status: StoreStatus.values.firstWhere(
        (e) => e.name == data['status'],
        orElse: () => StoreStatus.draft,
      ),
      isActive: data['is_active'] as bool? ?? true,
      isVerified: data['is_verified'] as bool? ?? false,
      acceptsOnlinePayment: data['accepts_online_payment'] as bool? ?? false,
      acceptsCash: data['accepts_cash'] as bool? ?? false,
      hasDelivery: data['has_delivery'] as bool? ?? false,
      metaTitle: data['meta_title'] as String?,
      metaDescription: data['meta_description'] as String?,
      keywords: List<String>.from(data['keywords'] ?? []),
      theme: data['theme'] as Map<String, dynamic>?,
      viewCount: data['view_count'] as int? ?? 0,
      rating: data['rating'] != null ? (data['rating'] as num).toDouble() : 0.0,
      reviewCount: data['review_count'] as int? ?? 0,
      created_at: DateTime.parse(data['created_at'] as String),
      updated_at: DateTime.parse(data['updated_at'] as String),
      publishedAt: data['published_at'] != null
          ? DateTime.parse(data['published_at'] as String)
          : null,
      metadata: data['metadata'] as Map<String, dynamic>?,
    );
  }

  // Métodos auxiliares específicos
  Future<StoreModel?> getBySlug(String slug) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('slug', slug)
          .maybeSingle();

      if (response == null) return null;
      return _mapToStoreModel(response);
    });
  }

  Future<List<StoreModel>?> getBySellerId(String sellerId) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('seller_id', sellerId)
          .order('created_at', ascending: false);

      if (response.isEmpty) return <StoreModel>[];
      return response.map<StoreModel>(_mapToStoreModel).toList();
    });
  }

  Future<void> incrementViewCount(String id) async {
    return await _authService.executeWithAuth(() async {
      await _client.rpc('increment_store_views', params: {'store_id': id});
    });
  }
}
