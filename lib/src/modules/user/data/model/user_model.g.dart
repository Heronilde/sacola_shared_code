// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      nome: json['nome'] as String,
      profile_picture: json['profile_picture'] as String?,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      isOnline: json['isOnline'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
      provinceCode: json['provinceCode'] as String? ?? '',
      countryCode: json['countryCode'] as String? ?? 'MZ',
      sellerId: json['sellerId'] as String?,
      fcmTokens:
          (json['fcmTokens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'nome': instance.nome,
      'profile_picture': instance.profile_picture,
      'role': _$UserRoleEnumMap[instance.role]!,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'isOnline': instance.isOnline,
      'isActive': instance.isActive,
      'provinceCode': instance.provinceCode,
      'countryCode': instance.countryCode,
      'sellerId': instance.sellerId,
      'fcmTokens': instance.fcmTokens,
    };

const _$UserRoleEnumMap = {UserRole.seller: 'seller', UserRole.admin: 'admin'};
