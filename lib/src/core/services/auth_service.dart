// lib/core/services/auth_service.dart
// ← Coloque este arquivo no pacote sacola_shared (ex: lib/core/services/auth_service.dart)
/*
import 'package:supabase/supabase.dart'; // ← Pacote puro (compartilhado – funciona mobile + web)

class AuthService {
  final SupabaseClient _client;

  /// Instância do AuthService – cliente injetado de fora (do app mobile ou web)
  AuthService({required SupabaseClient client}) : _client = client;

  /// Verifica se a sessão atual é válida e renova se necessário
  Future<void> ensureValidSession() async {
    final session = _client.auth.currentSession;
    if (session == null) {
      throw Exception('Usuário não autenticado. Faça login novamente.');
    }

    // Verifica se o token está próximo do vencimento (5 minutos antes)
    final expiresAt = DateTime.fromMillisecondsSinceEpoch(
      session.expiresAt! * 1000,
    );
    final now = DateTime.now();
    final timeUntilExpiry = expiresAt.difference(now);

    print('AuthService: Token expira em: ${timeUntilExpiry.inMinutes} minutos');

    // Renova se faltar 5 minutos ou menos
    if (timeUntilExpiry.inMinutes <= 5) {
      try {
        print('AuthService: Renovando token preventivamente...');
        await _client.auth.refreshSession();
        print('AuthService: Token renovado com sucesso preventivamente');
      } catch (e) {
        print('AuthService: Erro ao renovar token preventivamente: $e');
        throw Exception('Sessão expirada. Faça login novamente.');
      }
    }
  }

  /// Executa uma operação com verificação e renovação automática de token
  Future<T> executeWithAuth<T>(Future<T> Function() operation) async {
    try {
      // Primeira tentativa: verifica e renova se necessário
      await ensureValidSession();
      return await operation();
    } on PostgrestException catch (e) {
      // Se ainda assim der erro de JWT, tenta renovar uma vez
      if (_isAuthError(e)) {
        try {
          print(
            'AuthService: Erro de autenticação detectado (${e.message}), tentando renovar token...',
          );
          await _client.auth.refreshSession();
          print(
            'AuthService: Token renovado após erro, tentando operação novamente...',
          );
          return await operation(); // Retry da operação
        } catch (refreshError) {
          print('AuthService: Erro ao renovar token após falha: $refreshError');
          throw Exception('Sessão expirada. Faça login novamente.');
        }
      }
      // Se não for erro de auth, relança o erro original
      print('AuthService: Erro não relacionado à auth: ${e.message}');
      rethrow;
    } catch (e) {
      // Para outros tipos de erro, apenas relança
      print('AuthService: Erro geral: $e');
      rethrow;
    }
  }

  /// Verifica se o erro é relacionado à autenticação
  bool _isAuthError(PostgrestException e) {
    final message = e.message.toLowerCase();
    final code = e.code?.toLowerCase();

    return message.contains('jwt expired') ||
        message.contains('unauthorized') ||
        message.contains('invalid jwt') ||
        message.contains('token') ||
        code == '401' ||
        code == 'unauthorized';
  }

  /// Força o logout do usuário
  Future<void> signOut() async {
    try {
      print('AuthService: Fazendo logout...');
      await _client.auth.signOut();
      print('AuthService: Logout realizado com sucesso');
    } catch (e) {
      print('AuthService: Erro ao fazer logout: $e');
    }
  }

  /// Verifica se o usuário está logado
  bool get isLoggedIn => _client.auth.currentUser != null;

  /// Obtém o usuário atual
  User? get currentUser => _client.auth.currentUser;

  /// Obtém o ID do usuário atual
  String? get currentUserId => _client.auth.currentUser?.id;

  /// Obtém informações sobre o token atual
  Map<String, dynamic>? get tokenInfo {
    final session = _client.auth.currentSession;
    if (session == null) return null;

    final expiresAt = DateTime.fromMillisecondsSinceEpoch(
      session.expiresAt! * 1000,
    );
    final now = DateTime.now();
    final timeUntilExpiry = expiresAt.difference(now);

    return {
      'expires_at': expiresAt.toIso8601String(),
      'time_until_expiry_minutes': timeUntilExpiry.inMinutes,
      'time_until_expiry_seconds': timeUntilExpiry.inSeconds,
      'is_expired': timeUntilExpiry.isNegative,
      'needs_refresh': timeUntilExpiry.inMinutes <= 5,
    };
  }

  /// Método para debug - mostra informações do token
  void debugTokenInfo() {
    final info = tokenInfo;
    if (info != null) {
      print('AuthService: Token Info:');
      print('  - Expira em: ${info['expires_at']}');
      print('  - Tempo restante: ${info['time_until_expiry_minutes']} minutos');
      print('  - Expirado: ${info['is_expired']}');
      print('  - Precisa renovar: ${info['needs_refresh']}');
    } else {
      print('AuthService: Nenhum token ativo');
    }
  }
}
*/ // lib/core/services/auth_service.dart

import 'package:supabase/supabase.dart';

class AuthService {
  final SupabaseClient _client;

  /// Instância do AuthService – cliente injetado de fora (do app mobile ou web)
  AuthService({required SupabaseClient client}) : _client = client;

  /// Verifica se a sessão atual é válida e renova se necessário
  Future<void> ensureValidSession() async {
    final session = _client.auth.currentSession;
    if (session == null) {
      throw Exception('Usuário não autenticado. Faça login novamente.');
    }

    // Verifica se o token está próximo do vencimento (5 minutos antes)
    final expiresAt = DateTime.fromMillisecondsSinceEpoch(
      session.expiresAt! * 1000,
    );
    final now = DateTime.now();
    final timeUntilExpiry = expiresAt.difference(now);

    print('AuthService: Token expira em: ${timeUntilExpiry.inMinutes} minutos');

    // Renova se faltar 5 minutos ou menos
    if (timeUntilExpiry.inMinutes <= 5) {
      try {
        print('AuthService: Renovando token preventivamente...');
        await _client.auth.refreshSession();
        print('AuthService: Token renovado com sucesso preventivamente');
      } catch (e) {
        print('AuthService: Erro ao renovar token preventivamente: $e');
        throw Exception('Sessão expirada. Faça login novamente.');
      }
    }
  }

  // ============================================================================
  // ✅ NOVOS MÉTODOS PARA OPERAÇÕES PÚBLICAS
  // ============================================================================

  /// Verifica se o usuário está autenticado (sem lançar erro)
  bool get isAuthenticated {
    final session = _client.auth.currentSession;
    if (session == null) return false;

    final expiresAt = session.expiresAt;
    if (expiresAt != null) {
      final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      if (now >= expiresAt) return false;
    }

    return true;
  }

  /// Obtém o token de acesso se existir (retorna null se não autenticado)
  String? get accessToken {
    return _client.auth.currentSession?.accessToken;
  }

  /// ✅ NOVO: Executa operação PÚBLICA (não requer autenticação)
  /// Use este método para operações de LEITURA que qualquer pessoa pode fazer
  /// Exemplo: Ver lojas, ver produtos, buscar categorias
  Future<T> executePublic<T>(Future<T> Function() operation) async {
    try {
      return await operation();
    } catch (e) {
      print('AuthService: Erro em operação pública: $e');
      rethrow;
    }
  }

  /// ✅ NOVO: Executa operação que pode ser pública OU autenticada
  /// O callback recebe um parâmetro 'isAuth' indicando se está autenticado
  /// Use quando o comportamento muda se o usuário estiver logado
  Future<T> executeOptionalAuth<T>(
    Future<T> Function(bool isAuth) operation,
  ) async {
    try {
      final isAuth = isAuthenticated;
      return await operation(isAuth);
    } catch (e) {
      print('AuthService: Erro em operação opcional: $e');
      rethrow;
    }
  }

  // ============================================================================
  // MÉTODO ORIGINAL - Para operações que REQUEREM autenticação
  // ============================================================================

  /// Executa uma operação PRIVADA com verificação e renovação automática de token
  /// Use este método para operações que EXIGEM login: criar, atualizar, deletar
  Future<T> executeWithAuth<T>(Future<T> Function() operation) async {
    try {
      // Primeira tentativa: verifica e renova se necessário
      await ensureValidSession();
      return await operation();
    } on PostgrestException catch (e) {
      // Se ainda assim der erro de JWT, tenta renovar uma vez
      if (_isAuthError(e)) {
        try {
          print(
            'AuthService: Erro de autenticação detectado (${e.message}), tentando renovar token...',
          );
          await _client.auth.refreshSession();
          print(
            'AuthService: Token renovado após erro, tentando operação novamente...',
          );
          return await operation(); // Retry da operação
        } catch (refreshError) {
          print('AuthService: Erro ao renovar token após falha: $refreshError');
          throw Exception('Sessão expirada. Faça login novamente.');
        }
      }
      // Se não for erro de auth, relança o erro original
      print('AuthService: Erro não relacionado à auth: ${e.message}');
      rethrow;
    } catch (e) {
      // Para outros tipos de erro, apenas relança
      print('AuthService: Erro geral: $e');
      rethrow;
    }
  }

  /// Verifica se o erro é relacionado à autenticação
  bool _isAuthError(PostgrestException e) {
    final message = e.message.toLowerCase();
    final code = e.code?.toLowerCase();

    return message.contains('jwt expired') ||
        message.contains('unauthorized') ||
        message.contains('invalid jwt') ||
        message.contains('token') ||
        code == '401' ||
        code == 'unauthorized';
  }

  /// Força o logout do usuário
  Future<void> signOut() async {
    try {
      print('AuthService: Fazendo logout...');
      await _client.auth.signOut();
      print('AuthService: Logout realizado com sucesso');
    } catch (e) {
      print('AuthService: Erro ao fazer logout: $e');
    }
  }

  /// Verifica se o usuário está logado
  bool get isLoggedIn => _client.auth.currentUser != null;

  /// Obtém o usuário atual
  User? get currentUser => _client.auth.currentUser;

  /// Obtém o ID do usuário atual
  String? get currentUserId => _client.auth.currentUser?.id;

  /// Obtém informações sobre o token atual
  Map<String, dynamic>? get tokenInfo {
    final session = _client.auth.currentSession;
    if (session == null) return null;

    final expiresAt = DateTime.fromMillisecondsSinceEpoch(
      session.expiresAt! * 1000,
    );
    final now = DateTime.now();
    final timeUntilExpiry = expiresAt.difference(now);

    return {
      'expires_at': expiresAt.toIso8601String(),
      'time_until_expiry_minutes': timeUntilExpiry.inMinutes,
      'time_until_expiry_seconds': timeUntilExpiry.inSeconds,
      'is_expired': timeUntilExpiry.isNegative,
      'needs_refresh': timeUntilExpiry.inMinutes <= 5,
    };
  }

  /// Método para debug - mostra informações do token
  void debugTokenInfo() {
    final info = tokenInfo;
    if (info != null) {
      print('AuthService: Token Info:');
      print('  - Expira em: ${info['expires_at']}');
      print('  - Tempo restante: ${info['time_until_expiry_minutes']} minutos');
      print('  - Expirado: ${info['is_expired']}');
      print('  - Precisa renovar: ${info['needs_refresh']}');
    } else {
      print('AuthService: Nenhum token ativo');
    }
  }
}
