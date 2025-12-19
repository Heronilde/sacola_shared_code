// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      storeId: json['storeId'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      shortDescription: json['shortDescription'] as String?,
      categoryId: json['categoryId'] as String?,
      subcategoryId: json['subcategoryId'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      price: (json['price'] as num).toDouble(),
      compareAtPrice: (json['compareAtPrice'] as num?)?.toDouble(),
      costPrice: (json['costPrice'] as num?)?.toDouble(),
      currency: json['currency'] as String? ?? 'MZN',
      stock: (json['stock'] as num?)?.toInt() ?? 0,
      trackInventory: json['trackInventory'] as bool? ?? false,
      lowStockThreshold: (json['lowStockThreshold'] as num?)?.toInt(),
      mainImage: json['mainImage'] as String?,
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      condition:
          $enumDecodeNullable(_$ProductConditionEnumMap, json['condition']) ??
          ProductCondition.newProduct,
      variants: json['variants'] as String?,
      status:
          $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
          ProductStatus.active,
      isActive: json['isActive'] as bool? ?? true,
      isFeatured: json['isFeatured'] as bool? ?? false,
      isDigital: json['isDigital'] as bool? ?? false,
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      viewCount: (json['viewCount'] as num?)?.toInt() ?? 0,
      favoriteCount: (json['favoriteCount'] as num?)?.toInt() ?? 0,
      soldCount: (json['soldCount'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      metadata: json['metadata'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'categoryId': instance.categoryId,
      'subcategoryId': instance.subcategoryId,
      'tags': instance.tags,
      'price': instance.price,
      'compareAtPrice': instance.compareAtPrice,
      'costPrice': instance.costPrice,
      'currency': instance.currency,
      'stock': instance.stock,
      'trackInventory': instance.trackInventory,
      'lowStockThreshold': instance.lowStockThreshold,
      'mainImage': instance.mainImage,
      'images': instance.images,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'weight': instance.weight,
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
      'condition': _$ProductConditionEnumMap[instance.condition]!,
      'variants': instance.variants,
      'status': _$ProductStatusEnumMap[instance.status]!,
      'isActive': instance.isActive,
      'isFeatured': instance.isFeatured,
      'isDigital': instance.isDigital,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'viewCount': instance.viewCount,
      'favoriteCount': instance.favoriteCount,
      'soldCount': instance.soldCount,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$ProductConditionEnumMap = {
  ProductCondition.newProduct: 'newProduct',
  ProductCondition.used: 'used',
  ProductCondition.refurbished: 'refurbished',
};

const _$ProductStatusEnumMap = {
  ProductStatus.draft: 'draft',
  ProductStatus.active: 'active',
  ProductStatus.outOfStock: 'outOfStock',
  ProductStatus.discontinued: 'discontinued',
};
