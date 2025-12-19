// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreModelImpl _$$StoreModelImplFromJson(
  Map<String, dynamic> json,
) => _$StoreModelImpl(
  id: json['id'] as String,
  sellerId: json['sellerId'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String?,
  logo: json['logo'] as String?,
  coverImage: json['coverImage'] as String?,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  storeType:
      $enumDecodeNullable(_$StoreTypeEnumMap, json['storeType']) ??
      StoreType.online,
  address: json['address'] as String?,
  city: json['city'] as String?,
  provinceCode: json['provinceCode'] as String? ?? '',
  countryCode: json['countryCode'] as String? ?? 'MZ',
  postalCode: json['postalCode'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  phone: json['phone'] as String?,
  whatsapp: json['whatsapp'] as String?,
  email: json['email'] as String?,
  website: json['website'] as String?,
  facebook: json['facebook'] as String?,
  instagram: json['instagram'] as String?,
  businessHours: json['businessHours'] as Map<String, dynamic>?,
  status:
      $enumDecodeNullable(_$StoreStatusEnumMap, json['status']) ??
      StoreStatus.draft,
  isActive: json['isActive'] as bool? ?? true,
  isVerified: json['isVerified'] as bool? ?? false,
  acceptsOnlinePayment: json['acceptsOnlinePayment'] as bool? ?? false,
  acceptsCash: json['acceptsCash'] as bool? ?? false,
  hasDelivery: json['hasDelivery'] as bool? ?? false,
  metaTitle: json['metaTitle'] as String?,
  metaDescription: json['metaDescription'] as String?,
  keywords:
      (json['keywords'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  theme: json['theme'] as Map<String, dynamic>?,
  viewCount: (json['viewCount'] as num?)?.toInt() ?? 0,
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
  reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
  created_at: DateTime.parse(json['created_at'] as String),
  updated_at: DateTime.parse(json['updated_at'] as String),
  publishedAt: json['publishedAt'] == null
      ? null
      : DateTime.parse(json['publishedAt'] as String),
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$StoreModelImplToJson(_$StoreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerId': instance.sellerId,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'logo': instance.logo,
      'coverImage': instance.coverImage,
      'images': instance.images,
      'storeType': _$StoreTypeEnumMap[instance.storeType]!,
      'address': instance.address,
      'city': instance.city,
      'provinceCode': instance.provinceCode,
      'countryCode': instance.countryCode,
      'postalCode': instance.postalCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
      'email': instance.email,
      'website': instance.website,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'businessHours': instance.businessHours,
      'status': _$StoreStatusEnumMap[instance.status]!,
      'isActive': instance.isActive,
      'isVerified': instance.isVerified,
      'acceptsOnlinePayment': instance.acceptsOnlinePayment,
      'acceptsCash': instance.acceptsCash,
      'hasDelivery': instance.hasDelivery,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'keywords': instance.keywords,
      'theme': instance.theme,
      'viewCount': instance.viewCount,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$StoreTypeEnumMap = {
  StoreType.physical: 'physical',
  StoreType.online: 'online',
  StoreType.both: 'both',
};

const _$StoreStatusEnumMap = {
  StoreStatus.draft: 'draft',
  StoreStatus.active: 'active',
  StoreStatus.suspended: 'suspended',
  StoreStatus.closed: 'closed',
};
