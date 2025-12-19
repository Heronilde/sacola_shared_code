// lib/modules/product/ui/provider/product_provider.dart

import 'package:riverpod/legacy.dart';
import '../data/model/product_model.dart';

// ==================== PRODUTO ÚNICO ====================
// Notifier para um produto específico
class ProductNotifier extends StateNotifier<ProductModel?> {
  ProductNotifier() : super(null);

  // Define o produto atual
  void setProduct(ProductModel? product) {
    state = product;
  }

  // Limpa o produto
  void clearProduct() {
    state = null;
  }

  // Atualiza status
  void updateStatus(ProductStatus status) {
    if (state != null) {
      state = state!.copyWith(status: status);
    }
  }

  // Atualiza estoque
  void updateStock(int newStock) {
    if (state != null) {
      state = state!.copyWith(
        stock: newStock,
        status: newStock > 0 ? ProductStatus.active : ProductStatus.outOfStock,
      );
    }
  }

  // Decrementa estoque (após venda)
  void decrementStock(int quantity) {
    if (state != null && state!.trackInventory) {
      final newStock = state!.stock - quantity;
      state = state!.copyWith(
        stock: newStock.clamp(0, double.infinity).toInt(),
        soldCount: state!.soldCount + quantity,
        status: newStock <= 0 ? ProductStatus.outOfStock : state!.status,
      );
    }
  }

  // Incrementa views
  void incrementViews() {
    if (state != null) {
      state = state!.copyWith(viewCount: state!.viewCount + 1);
    }
  }

  // Atualiza preço
  void updatePrice(double newPrice, {double? compareAtPrice}) {
    if (state != null) {
      state = state!.copyWith(
        price: newPrice,
        compareAtPrice: compareAtPrice ?? state!.compareAtPrice,
      );
    }
  }

  // Marca como destaque
  void toggleFeatured() {
    if (state != null) {
      state = state!.copyWith(isFeatured: !state!.isFeatured);
    }
  }

  // Publica o produto
  void publishProduct() {
    if (state != null) {
      state = state!.copyWith(
        status: ProductStatus.active,
        publishedAt: DateTime.now(),
      );
    }
  }
}

// Provedor do produto único
final productProvider = StateNotifierProvider<ProductNotifier, ProductModel?>((
  ref,
) {
  return ProductNotifier();
});

// ==================== LISTA DE PRODUTOS ====================
// Notifier para lista de produtos
class ProductsListNotifier extends StateNotifier<List<ProductModel>> {
  ProductsListNotifier() : super([]);

  // Define a lista completa
  void setProducts(List<ProductModel> products) {
    state = products;
  }

  // Adiciona um produto
  void addProduct(ProductModel product) {
    state = [...state, product];
  }

  // Atualiza um produto específico
  void updateProduct(ProductModel updatedProduct) {
    state = [
      for (final product in state)
        if (product.id == updatedProduct.id) updatedProduct else product,
    ];
  }

  // Remove um produto
  void removeProduct(String productId) {
    state = state.where((product) => product.id != productId).toList();
  }

  // Limpa a lista
  void clearProducts() {
    state = [];
  }

  // Filtra por categoria
  List<ProductModel> getProductsByCategory(String categoryId) {
    return state.where((product) => product.categoryId == categoryId).toList();
  }

  // Filtra produtos ativos
  List<ProductModel> getActiveProducts() {
    return state
        .where(
          (product) =>
              product.isActive && product.status == ProductStatus.active,
        )
        .toList();
  }

  // Filtra produtos em destaque
  List<ProductModel> getFeaturedProducts() {
    return state
        .where((product) => product.isFeatured && product.isActive)
        .toList();
  }

  // Filtra produtos com baixo estoque
  List<ProductModel> getLowStockProducts() {
    return state.where((product) {
      if (!product.trackInventory || product.lowStockThreshold == null)
        return false;
      return product.stock <= product.lowStockThreshold!;
    }).toList();
  }

  // Busca por nome
  List<ProductModel> searchProducts(String query) {
    final lowerQuery = query.toLowerCase();
    return state.where((product) {
      return product.name.toLowerCase().contains(lowerQuery) ||
          (product.description?.toLowerCase().contains(lowerQuery) ?? false);
    }).toList();
  }
}

// Provedor da lista de produtos
final productsListProvider =
    StateNotifierProvider<ProductsListNotifier, List<ProductModel>>((ref) {
      return ProductsListNotifier();
    });
