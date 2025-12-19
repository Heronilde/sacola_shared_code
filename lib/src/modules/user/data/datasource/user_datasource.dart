import 'package:supabase/supabase.dart'; // ← Pacote puro

// ← Import correto do AuthService adaptado
import '../../../../core/services/supabase_jwt.dart';
import '../../../generic/data/generic_abstract_of_data_source.dart';
import 'package:sacola_shared/sacola_shared.dart'; // Para UserModel, UserRole, etc.

class UserModelRemoteDataSource extends GenericAbstractOfDataSource<UserModel> {
  final SupabaseClient _client;
  final AuthService _authService; // ← Nova dependência injetada
  static const String _tableName = 'users';

  /// Cliente e AuthService injetados de fora (do app mobile ou web)
  UserModelRemoteDataSource({
    required SupabaseClient client,
    required AuthService authService,
  }) : _client = client,
       _authService = authService;

  @override
  Future<UserModel?> create(UserModel item) async {
    return await _authService.executeWithAuth(() async {
      final existingUser = await getById(item.id);

      if (existingUser != null) {
        print('Usuário já existe, atualizando: ${item.id}');
        await update(item);
        return item;
      }

      await _client.from(_tableName).insert({
        'id': item.id,
        'email': item.email,
        'phone': item.phone,
        'nome': item.nome,
        'profile_picture': item.profile_picture,
        'role': item.role.name,
        'created_at': item.created_at.toIso8601String(),
        'updated_at': item.updated_at.toIso8601String(),
        'is_online': item.isOnline,
        'is_active': item.isActive,
        'province_code': item.provinceCode,
        'country_code': item.countryCode,
        'seller_id': item.sellerId,
        'fcm_tokens': item.fcmTokens,
      });

      print('Usuário criado com sucesso no Supabase');
      return item;
    });
  }

  @override
  Future<UserModel?> getById(String id) async {
    return await _authService.executeWithAuth(() async {
      print('UserDataSource: Buscando usuário com id: $id');

      final response = await _client
          .from(_tableName)
          .select()
          .eq('id', id)
          .maybeSingle();

      print('UserDataSource: Resposta recebida: $response');

      if (response == null) {
        print('UserDataSource: Nenhum usuário encontrado');
        return null;
      }

      print('UserDataSource: Usuário encontrado, mapeando...');
      return _mapToUserModel(response);
    });
  }

  @override
  Future<List<UserModel>?> getAll(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  ) async {
    print(
      'UserDataSource: Buscando todos os usuários com filtros: '
      'filter1=$filter1, filter2=$filter2, filter3=$filter3, filter4=$filter4',
    );
    return await _authService.executeWithAuth(() async {
      var query = _client.from(_tableName).select();

      if (filter1 != null && filter1.isNotEmpty) {
        query = query.eq('role', filter1);
      }

      if (filter2 != null && filter2.isNotEmpty) {
        query = query.eq('email', filter2);
      }

      if (filter3 != null && filter3.isNotEmpty) {
        query = query.eq('province_code', filter3);
      }

      if (filter4 != null && filter4.isNotEmpty) {
        query = query.eq('is_active', filter4 == 'true');
      }

      final response = await query.order('created_at', ascending: false);

      if (response.isEmpty) return <UserModel>[];

      return response.map<UserModel>(_mapToUserModel).toList();
    });
  }

  @override
  Future<void> update(UserModel item) async {
    return await _authService.executeWithAuth(() async {
      await _client
          .from(_tableName)
          .update({
            'email': item.email,
            'phone': item.phone,
            'nome': item.nome,
            'profile_picture': item.profile_picture,
            'role': item.role.name,
            'is_online': item.isOnline,
            'is_active': item.isActive,
            'province_code': item.provinceCode,
            'country_code': item.countryCode,
            'seller_id': item.sellerId,
            'fcm_tokens': item.fcmTokens,
            'updated_at': DateTime.now().toIso8601String(),
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

  UserModel _mapToUserModel(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'] as String,
      email: data['email'] as String?,
      phone: data['phone'] as String?,
      nome: data['nome'] as String,
      profile_picture: data['profile_picture'] as String?,
      role: UserRole.values.firstWhere(
        (e) => e.name == data['role'],
        orElse: () => UserRole.seller,
      ),
      created_at: DateTime.parse(data['created_at'] as String),
      updated_at: DateTime.parse(data['updated_at'] as String),
      isOnline: data['is_online'] as bool? ?? false,
      isActive: data['is_active'] as bool? ?? true,
      provinceCode: data['province_code'] as String? ?? '',
      countryCode: data['country_code'] as String? ?? 'MZ',
      sellerId: data['seller_id'] as String?,
      fcmTokens: List<String>.from(data['fcm_tokens'] ?? []),
    );
  }

  Future<UserModel?> getByEmail(String email) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('email', email)
          .maybeSingle();

      if (response == null) return null;
      return _mapToUserModel(response);
    });
  }

  Future<UserModel?> getByPhone(String phone) async {
    return await _authService.executeWithAuth(() async {
      final response = await _client
          .from(_tableName)
          .select()
          .eq('phone', phone)
          .maybeSingle();

      if (response == null) return null;
      return _mapToUserModel(response);
    });
  }
}
