import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

enum ProductStatus { draft, active, outOfStock, discontinued }

enum ProductCondition { newProduct, used, refurbished }

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String storeId,

    // Informações básicas
    required String name,
    required String slug,
    String? description,
    String? shortDescription,

    // Categoria
    String? categoryId,
    String? subcategoryId,
    @Default([]) List<String> tags,

    // Preços e estoque
    required double price,
    double? compareAtPrice,
    double? costPrice,
    @Default('MZN') String currency,
    @Default(0) int stock,
    @Default(false) bool trackInventory,
    int? lowStockThreshold,

    // Imagens
    String? mainImage,
    @Default([]) List<String> images,

    // Especificações
    String? sku,
    String? barcode,
    double? weight,
    double? length,
    double? width,
    double? height,
    @Default(ProductCondition.newProduct) ProductCondition condition,

    // Variações - SIMPLIFICADO
    String? variants, // JSON string ao invés de List<Map>
    // Status
    @Default(ProductStatus.active) ProductStatus status,
    @Default(true) bool isActive,
    @Default(false) bool isFeatured,
    @Default(false) bool isDigital,

    // SEO
    String? metaTitle,
    String? metaDescription,

    // Estatísticas
    @Default(0) int viewCount,
    @Default(0) int favoriteCount,
    @Default(0) int soldCount,
    @Default(0.0) double rating,
    @Default(0) int reviewCount,

    // Datas
    required DateTime created_at,
    required DateTime updated_at,
    DateTime? publishedAt,

    // Dados extras - SIMPLIFICADO
    String? metadata, // JSON string ao invés de Map
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
