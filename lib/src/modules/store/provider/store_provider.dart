// lib/modules/store/ui/provider/store_provider.dart

import 'package:riverpod/legacy.dart';
import '../data/model/store_model.dart';

// ==================== LOJA ÚNICA ====================
// Notifier para uma loja específica (para visualização/edição)
class StoreNotifier extends StateNotifier<StoreModel?> {
  StoreNotifier() : super(null);

  // Define a loja atual
  void setStore(StoreModel? store) {
    state = store;
  }

  // Limpa a loja
  void clearStore() {
    state = null;
  }

  // Atualiza status da loja
  void updateStatus(StoreStatus status) {
    if (state != null) {
      state = state!.copyWith(status: status);
    }
  }

  // Publica a loja
  void publishStore() {
    if (state != null) {
      state = state!.copyWith(
        status: StoreStatus.active,
        publishedAt: DateTime.now(),
      );
    }
  }

  // Incrementa views
  void incrementViews() {
    if (state != null) {
      state = state!.copyWith(viewCount: state!.viewCount + 1);
    }
  }

  // Atualiza informações básicas
  void updateBasicInfo({
    String? name,
    String? description,
    String? logo,
    String? coverImage,
  }) {
    if (state != null) {
      state = state!.copyWith(
        name: name ?? state!.name,
        description: description ?? state!.description,
        logo: logo ?? state!.logo,
        coverImage: coverImage ?? state!.coverImage,
      );
    }
  }
}

// Provedor da loja única
final storeProvider = StateNotifierProvider<StoreNotifier, StoreModel?>((ref) {
  return StoreNotifier();
});

// ==================== LISTA DE LOJAS ====================
// Notifier para lista de lojas (do vendedor)
class StoresListNotifier extends StateNotifier<List<StoreModel>> {
  StoresListNotifier() : super([]);

  // Define a lista completa
  void setStores(List<StoreModel> stores) {
    state = stores;
  }

  // Adiciona uma loja
  void addStore(StoreModel store) {
    state = [...state, store];
  }

  // Atualiza uma loja específica
  void updateStore(StoreModel updatedStore) {
    state = [
      for (final store in state)
        if (store.id == updatedStore.id) updatedStore else store,
    ];
  }

  // Remove uma loja
  void removeStore(String storeId) {
    state = state.where((store) => store.id != storeId).toList();
  }

  // Limpa a lista
  void clearStores() {
    state = [];
  }

  // Filtra lojas por status
  List<StoreModel> getStoresByStatus(StoreStatus status) {
    return state.where((store) => store.status == status).toList();
  }

  // Pega lojas ativas
  List<StoreModel> getActiveStores() {
    return state.where((store) => store.isActive).toList();
  }
}

// Provedor da lista de lojas
final storesListProvider =
    StateNotifierProvider<StoresListNotifier, List<StoreModel>>((ref) {
      return StoresListNotifier();
    });
