// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SellerModelImpl _$$SellerModelImplFromJson(Map<String, dynamic> json) =>
    _$SellerModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      documentType: json['documentType'] as String?,
      documentNumber: json['documentNumber'] as String?,
      documentImage: json['documentImage'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      provinceCode: json['provinceCode'] as String? ?? '',
      countryCode: json['countryCode'] as String? ?? 'MZ',
      postalCode: json['postalCode'] as String?,
      bankName: json['bankName'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankAccountHolder: json['bankAccountHolder'] as String?,
      mpesaNumber: json['mpesaNumber'] as String?,
      emolaNumber: json['emolaNumber'] as String?,
      status:
          $enumDecodeNullable(_$SellerStatusEnumMap, json['status']) ??
          SellerStatus.pending,
      isVerified: json['isVerified'] as bool? ?? false,
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
      isActive: json['isActive'] as bool? ?? true,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SellerModelImplToJson(_$SellerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'documentType': instance.documentType,
      'documentNumber': instance.documentNumber,
      'documentImage': instance.documentImage,
      'address': instance.address,
      'city': instance.city,
      'provinceCode': instance.provinceCode,
      'countryCode': instance.countryCode,
      'postalCode': instance.postalCode,
      'bankName': instance.bankName,
      'bankAccountNumber': instance.bankAccountNumber,
      'bankAccountHolder': instance.bankAccountHolder,
      'mpesaNumber': instance.mpesaNumber,
      'emolaNumber': instance.emolaNumber,
      'status': _$SellerStatusEnumMap[instance.status]!,
      'isVerified': instance.isVerified,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'isActive': instance.isActive,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$SellerStatusEnumMap = {
  SellerStatus.pending: 'pending',
  SellerStatus.active: 'active',
  SellerStatus.suspended: 'suspended',
  SellerStatus.inactive: 'inactive',
};
