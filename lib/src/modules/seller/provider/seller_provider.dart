// lib/modules/seller/ui/provider/seller_provider.dart

import 'package:riverpod/legacy.dart';
import '../data/model/seller_model.dart';

// Notifier principal para o vendedor
class SellerNotifier extends StateNotifier<SellerModel?> {
  SellerNotifier() : super(null); // Começa com null

  // Define o vendedor
  void setSeller(SellerModel? seller) {
    state = seller;
  }

  // Limpa o vendedor
  void clearSeller() {
    state = null;
  }

  // Atualiza status de verificação
  void updateVerificationStatus(bool isVerified) {
    if (state != null) {
      state = state!.copyWith(
        isVerified: isVerified,
        verifiedAt: isVerified ? DateTime.now() : null,
      );
    }
  }

  // Atualiza dados bancários
  void updateBankInfo({
    String? bankName,
    String? bankAccountNumber,
    String? bankAccountHolder,
  }) {
    if (state != null) {
      state = state!.copyWith(
        bankName: bankName ?? state!.bankName,
        bankAccountNumber: bankAccountNumber ?? state!.bankAccountNumber,
        bankAccountHolder: bankAccountHolder ?? state!.bankAccountHolder,
      );
    }
  }
}

// Provedor do Notifier
final sellerProvider = StateNotifierProvider<SellerNotifier, SellerModel?>((
  ref,
) {
  return SellerNotifier();
});
