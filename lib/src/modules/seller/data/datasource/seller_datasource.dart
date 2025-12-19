import 'package:supabase/supabase.dart';

import '../../../../core/services/auth_service.dart';
import '../../../generic/data/generic_abstract_of_data_source.dart';
import '../model/seller_model.dart';

class SellerModelRemoteDataSource
    extends GenericAbstractOfDataSource<SellerModel> {
  final SupabaseClient _client;
  final AuthService _authService;
  static const String _tableName = 'sellers';

  SellerModelRemoteDataSource({
    required SupabaseClient client,
    required AuthService authService,
  }) : _client = client,
       _authService = authService;

  @override
  Future<SellerModel?> create(SellerModel item) async {
    return await _authService.executeWithAuth(() async {
      final existingSeller = await getById(item.id);

      if (existingSeller != null) {
        print('Vendedor já existe, atualizando: ${item.id}');
        await update(item);
        return item;
      }

      await _client.from(_tableName).insert({
        'id': item.id,
        'user_id': item.userId,
        'document_type': item.documentType,
        'document_number': item.documentNumber,
        'document_image': item.documentImage,
        'address': item.address,
        'city': item.city,
        'province_code': item.provinceCode,
        'country_code': item.countryCode,
        'postal_code': item.postalCode,
        'bank_name': item.bankName,
        'bank_account_number': item.bankAccountNumber,
        'bank_account_holder': item.bankAccountHolder,
        'mpesa_number': item.mpesaNumber,
        'emola_number': item.emolaNumber,
        'status': item.status.name,
        'is_verified': item.isVerified,
        'verified_at': item.verifiedAt?.toIso8601String(),
        'is_active': item.isActive,
        'created_at': item.created_at.toIso8601String(),
        'updated_at': item.updated_at.toIso8601String(),
        'metadata': item.metadata,
      });

      print('Vendedor criado com sucesso no Supabase');
      return item;
    });
  }

  @override
  Future<SellerModel?> getById(String id) async {
    return await _authService.executeWithAuth(() async {
      print('SellerDataSource: Buscando vendedor com id: $id');

      final response = await _client
          .from(_tableName)
          .select()
          .eq('id', id)
          .maybeSingle();

      print('SellerDataSource: Resposta recebida: $response');

      if (response == null) {
        print('SellerDataSource: Nenhum vendedor encontrado');
        return null;
      }

      print('SellerDataSource: Vendedor encontrado, mapeando...');
      return _mapToSellerModel(response);
    });
  }

  @override
  Future<List<SellerModel>?> getAll(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  ) async {
    print(
      'SellerDataSource: Buscando todos os vendedores com filtros: '
      'filter1=$filter1, filter2=$filter2, filter3=$filter3, filter4=$filter4',
    );
    return await _authService.executeWithAuth(() async {
      var query = _client.from(_tableName).select();

      // filter1: status
      if (filter1 != null && filter1.isNotEmpty) {
        query = query.eq('status', filter1);
      }

      // filter2: user_id
      if (filter2 != null && filter2.isNotEmpty) {
        query = query.eq('user_id', filter2);
      }

      // filter3: province_code
      if (filter3 != null && filter3.isNotEmpty) {
        query = query.eq('province_code', filter3);
      }

      // filter4: is_verified
      if (filter4 != null && filter4.isNotEmpty) {
        query = query.eq('is_verified', filter4 == 'true');
      }

      final response = await query.order('created_at', ascending: false);

      if (response.isEmpty) return <SellerModel>[];

      return response.map<SellerModel>(_mapToSellerModel).toList();
    });
  }

  @override
  Future<void> update(SellerModel item) async {
    return await _authService.executeWithAuth(() async {
      await _client
          .from(_tableName)
          .update({
            'user_id': item.userId,
            'document_type': item.documentType,
            'document_number': item.documentNumber,
            'document_image': item.documentImage,
            'address': item.address,
            'city': item.city,
            'province_code': item.provinceCode,
            'country_code': item.countryCode,
            'postal_code': item.postalCode,
            'bank_name': item.bankName,
            'bank_account_number': item.bankAccountNumber,
            'bank_account_holder': item.bankAccountHolder,
            'mpesa_number': item.mpesaNumber,
            'emola_number': item.emolaNumber,
            'status': item.status.name,
            'is_verified': item.isVerified,
            'verified_at': item.verifiedAt?.toIso8601String(),
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

  SellerModel _mapToSellerModel(Map<String, dynamic> data) {
    return SellerModel(
      id: data['id'] as String,
      userId: data['user_id'] as String,
      documentType: data['document_type'] as String?,
      documentNumber: data['document_number'] as String?,
      documentImage: data['document_image'] as String?,
      address: data['address'] as String?,
      city: data['city'] as String?,
      provinceCode: data['province_code'] as String? ?? '',
      countryCode: data['country_code'] as String? ?? 'MZ',
      postalCode: data['postal_code'] as String?,
      bankName: data['bank_name'] as String?,
      bankAccountNumber: data['bank_account_number'] as String?,
      bankAccountHolder: data['bank_account_holder'] as String?,
      mpesaNumber: data['mpesa_number'] as String?,
      emolaNumber: data['emola_number'] as String?,
      status: SellerStatus.values.firstWhere(
        (e) => e.name == data['status'],
        orElse: () => SellerStatus.pending,
      ),
      isVerified: data['is_verified'] as bool? ?? false,
      verifiedAt: data['verified_at'] != null
          ? DateTime.parse(data['verified_at'] as String)
          : null,
      isActive: data['is_active'] as bool? ?? true,
      created_at: DateTime.parse(data['created_at'] as String),
      updated_at: DateTime.parse(data['updated_at'] as String),
      metadata: data['metadata'] as Map<String, dynamic>?,
    );
  }

  // Métodos auxiliares específicos
  Future<SellerModel?> getByUserId(String userId) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('user_id', userId)
          .maybeSingle();

      if (response == null) return null;
      return _mapToSellerModel(response);
    });
  }

  Future<SellerModel?> getByDocumentNumber(String documentNumber) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('document_number', documentNumber)
          .maybeSingle();

      if (response == null) return null;
      return _mapToSellerModel(response);
    });
  }
}
