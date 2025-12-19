// lib/modules/category/ui/provider/category_provider.dart

import 'package:riverpod/legacy.dart';
import '../data/model/category_model.dart';

// ==================== CATEGORIA ÚNICA ====================
// Notifier para uma categoria específica
class CategoryNotifier extends StateNotifier<CategoryModel?> {
  CategoryNotifier() : super(null);

  // Define a categoria atual
  void setCategory(CategoryModel? category) {
    state = category;
  }

  // Limpa a categoria
  void clearCategory() {
    state = null;
  }

  // Atualiza status
  void toggleActive() {
    if (state != null) {
      state = state!.copyWith(isActive: !state!.isActive);
    }
  }

  // Atualiza ordem
  void updateOrder(int newOrder) {
    if (state != null) {
      state = state!.copyWith(order: newOrder);
    }
  }
}

// Provedor da categoria única
final categoryProvider =
    StateNotifierProvider<CategoryNotifier, CategoryModel?>((ref) {
      return CategoryNotifier();
    });

// ==================== LISTA DE CATEGORIAS ====================
// Notifier para lista de categorias
class CategoriesListNotifier extends StateNotifier<List<CategoryModel>> {
  CategoriesListNotifier() : super([]);

  // Define a lista completa
  void setCategories(List<CategoryModel> categories) {
    state = categories;
  }

  // Adiciona uma categoria
  void addCategory(CategoryModel category) {
    state = [...state, category];
  }

  // Atualiza uma categoria específica
  void updateCategory(CategoryModel updatedCategory) {
    state = [
      for (final category in state)
        if (category.id == updatedCategory.id) updatedCategory else category,
    ];
  }

  // Remove uma categoria
  void removeCategory(String categoryId) {
    state = state.where((category) => category.id != categoryId).toList();
  }

  // Limpa a lista
  void clearCategories() {
    state = [];
  }

  // Pega categorias principais (sem parent)
  List<CategoryModel> getMainCategories() {
    return state
        .where((category) => category.parentId == null && category.isActive)
        .toList()
      ..sort((a, b) => a.order.compareTo(b.order));
  }

  // Pega subcategorias de uma categoria
  List<CategoryModel> getSubcategories(String parentId) {
    return state
        .where((category) => category.parentId == parentId && category.isActive)
        .toList()
      ..sort((a, b) => a.order.compareTo(b.order));
  }

  // Pega todas as categorias ativas
  List<CategoryModel> getActiveCategories() {
    return state.where((category) => category.isActive).toList();
  }
}

// Provedor da lista de categorias
final categoriesListProvider =
    StateNotifierProvider<CategoriesListNotifier, List<CategoryModel>>((ref) {
      return CategoriesListNotifier();
    });
