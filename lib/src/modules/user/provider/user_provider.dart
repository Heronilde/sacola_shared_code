import 'package:riverpod/legacy.dart';
import '../data/model/user_model.dart';

// Notifier principal para o usuário
class UserNotifier extends StateNotifier<UserModel?> {
  UserNotifier() : super(null); // Começa com null

  // Define o usuário
  void setUser(UserModel? user) {
    state = user;
  }

  // Limpa o usuário (logout)
  void clearUser() {
    state = null;
  }
}

// Provedor do Notifier
final userProvider = StateNotifierProvider<UserNotifier, UserModel?>((ref) {
  return UserNotifier();
});
