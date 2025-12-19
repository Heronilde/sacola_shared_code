// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SellerModel _$SellerModelFromJson(Map<String, dynamic> json) {
  return _SellerModel.fromJson(json);
}

/// @nodoc
mixin _$SellerModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError; // FK → users.id
  // Documentação (KYC)
  String? get documentType => throw _privateConstructorUsedError;
  String? get documentNumber => throw _privateConstructorUsedError;
  String? get documentImage => throw _privateConstructorUsedError; // Endereço
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String get provinceCode => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String? get postalCode =>
      throw _privateConstructorUsedError; // Dados bancários
  String? get bankName => throw _privateConstructorUsedError;
  String? get bankAccountNumber => throw _privateConstructorUsedError;
  String? get bankAccountHolder => throw _privateConstructorUsedError;
  String? get mpesaNumber => throw _privateConstructorUsedError;
  String? get emolaNumber => throw _privateConstructorUsedError; // Status
  SellerStatus get status => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError; // Datas
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError; // Dados extras
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this SellerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SellerModelCopyWith<SellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerModelCopyWith<$Res> {
  factory $SellerModelCopyWith(
    SellerModel value,
    $Res Function(SellerModel) then,
  ) = _$SellerModelCopyWithImpl<$Res, SellerModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    String? documentType,
    String? documentNumber,
    String? documentImage,
    String? address,
    String? city,
    String provinceCode,
    String countryCode,
    String? postalCode,
    String? bankName,
    String? bankAccountNumber,
    String? bankAccountHolder,
    String? mpesaNumber,
    String? emolaNumber,
    SellerStatus status,
    bool isVerified,
    DateTime? verifiedAt,
    bool isActive,
    DateTime created_at,
    DateTime updated_at,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$SellerModelCopyWithImpl<$Res, $Val extends SellerModel>
    implements $SellerModelCopyWith<$Res> {
  _$SellerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? documentType = freezed,
    Object? documentNumber = freezed,
    Object? documentImage = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? provinceCode = null,
    Object? countryCode = null,
    Object? postalCode = freezed,
    Object? bankName = freezed,
    Object? bankAccountNumber = freezed,
    Object? bankAccountHolder = freezed,
    Object? mpesaNumber = freezed,
    Object? emolaNumber = freezed,
    Object? status = null,
    Object? isVerified = null,
    Object? verifiedAt = freezed,
    Object? isActive = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            documentType: freezed == documentType
                ? _value.documentType
                : documentType // ignore: cast_nullable_to_non_nullable
                      as String?,
            documentNumber: freezed == documentNumber
                ? _value.documentNumber
                : documentNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            documentImage: freezed == documentImage
                ? _value.documentImage
                : documentImage // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            provinceCode: null == provinceCode
                ? _value.provinceCode
                : provinceCode // ignore: cast_nullable_to_non_nullable
                      as String,
            countryCode: null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            postalCode: freezed == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            bankName: freezed == bankName
                ? _value.bankName
                : bankName // ignore: cast_nullable_to_non_nullable
                      as String?,
            bankAccountNumber: freezed == bankAccountNumber
                ? _value.bankAccountNumber
                : bankAccountNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            bankAccountHolder: freezed == bankAccountHolder
                ? _value.bankAccountHolder
                : bankAccountHolder // ignore: cast_nullable_to_non_nullable
                      as String?,
            mpesaNumber: freezed == mpesaNumber
                ? _value.mpesaNumber
                : mpesaNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            emolaNumber: freezed == emolaNumber
                ? _value.emolaNumber
                : emolaNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as SellerStatus,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            verifiedAt: freezed == verifiedAt
                ? _value.verifiedAt
                : verifiedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            created_at: null == created_at
                ? _value.created_at
                : created_at // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updated_at: null == updated_at
                ? _value.updated_at
                : updated_at // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SellerModelImplCopyWith<$Res>
    implements $SellerModelCopyWith<$Res> {
  factory _$$SellerModelImplCopyWith(
    _$SellerModelImpl value,
    $Res Function(_$SellerModelImpl) then,
  ) = __$$SellerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String? documentType,
    String? documentNumber,
    String? documentImage,
    String? address,
    String? city,
    String provinceCode,
    String countryCode,
    String? postalCode,
    String? bankName,
    String? bankAccountNumber,
    String? bankAccountHolder,
    String? mpesaNumber,
    String? emolaNumber,
    SellerStatus status,
    bool isVerified,
    DateTime? verifiedAt,
    bool isActive,
    DateTime created_at,
    DateTime updated_at,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$SellerModelImplCopyWithImpl<$Res>
    extends _$SellerModelCopyWithImpl<$Res, _$SellerModelImpl>
    implements _$$SellerModelImplCopyWith<$Res> {
  __$$SellerModelImplCopyWithImpl(
    _$SellerModelImpl _value,
    $Res Function(_$SellerModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? documentType = freezed,
    Object? documentNumber = freezed,
    Object? documentImage = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? provinceCode = null,
    Object? countryCode = null,
    Object? postalCode = freezed,
    Object? bankName = freezed,
    Object? bankAccountNumber = freezed,
    Object? bankAccountHolder = freezed,
    Object? mpesaNumber = freezed,
    Object? emolaNumber = freezed,
    Object? status = null,
    Object? isVerified = null,
    Object? verifiedAt = freezed,
    Object? isActive = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? metadata = freezed,
  }) {
    return _then(
      _$SellerModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        documentType: freezed == documentType
            ? _value.documentType
            : documentType // ignore: cast_nullable_to_non_nullable
                  as String?,
        documentNumber: freezed == documentNumber
            ? _value.documentNumber
            : documentNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        documentImage: freezed == documentImage
            ? _value.documentImage
            : documentImage // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        provinceCode: null == provinceCode
            ? _value.provinceCode
            : provinceCode // ignore: cast_nullable_to_non_nullable
                  as String,
        countryCode: null == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        postalCode: freezed == postalCode
            ? _value.postalCode
            : postalCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        bankName: freezed == bankName
            ? _value.bankName
            : bankName // ignore: cast_nullable_to_non_nullable
                  as String?,
        bankAccountNumber: freezed == bankAccountNumber
            ? _value.bankAccountNumber
            : bankAccountNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        bankAccountHolder: freezed == bankAccountHolder
            ? _value.bankAccountHolder
            : bankAccountHolder // ignore: cast_nullable_to_non_nullable
                  as String?,
        mpesaNumber: freezed == mpesaNumber
            ? _value.mpesaNumber
            : mpesaNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        emolaNumber: freezed == emolaNumber
            ? _value.emolaNumber
            : emolaNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SellerStatus,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        verifiedAt: freezed == verifiedAt
            ? _value.verifiedAt
            : verifiedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        created_at: null == created_at
            ? _value.created_at
            : created_at // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updated_at: null == updated_at
            ? _value.updated_at
            : updated_at // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SellerModelImpl implements _SellerModel {
  const _$SellerModelImpl({
    required this.id,
    required this.userId,
    this.documentType,
    this.documentNumber,
    this.documentImage,
    this.address,
    this.city,
    this.provinceCode = '',
    this.countryCode = 'MZ',
    this.postalCode,
    this.bankName,
    this.bankAccountNumber,
    this.bankAccountHolder,
    this.mpesaNumber,
    this.emolaNumber,
    this.status = SellerStatus.pending,
    this.isVerified = false,
    this.verifiedAt,
    this.isActive = true,
    required this.created_at,
    required this.updated_at,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$SellerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SellerModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  // FK → users.id
  // Documentação (KYC)
  @override
  final String? documentType;
  @override
  final String? documentNumber;
  @override
  final String? documentImage;
  // Endereço
  @override
  final String? address;
  @override
  final String? city;
  @override
  @JsonKey()
  final String provinceCode;
  @override
  @JsonKey()
  final String countryCode;
  @override
  final String? postalCode;
  // Dados bancários
  @override
  final String? bankName;
  @override
  final String? bankAccountNumber;
  @override
  final String? bankAccountHolder;
  @override
  final String? mpesaNumber;
  @override
  final String? emolaNumber;
  // Status
  @override
  @JsonKey()
  final SellerStatus status;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  final DateTime? verifiedAt;
  @override
  @JsonKey()
  final bool isActive;
  // Datas
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;
  // Dados extras
  final Map<String, dynamic>? _metadata;
  // Dados extras
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SellerModel(id: $id, userId: $userId, documentType: $documentType, documentNumber: $documentNumber, documentImage: $documentImage, address: $address, city: $city, provinceCode: $provinceCode, countryCode: $countryCode, postalCode: $postalCode, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, mpesaNumber: $mpesaNumber, emolaNumber: $emolaNumber, status: $status, isVerified: $isVerified, verifiedAt: $verifiedAt, isActive: $isActive, created_at: $created_at, updated_at: $updated_at, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SellerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            (identical(other.documentImage, documentImage) ||
                other.documentImage == documentImage) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.provinceCode, provinceCode) ||
                other.provinceCode == provinceCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber) &&
            (identical(other.bankAccountHolder, bankAccountHolder) ||
                other.bankAccountHolder == bankAccountHolder) &&
            (identical(other.mpesaNumber, mpesaNumber) ||
                other.mpesaNumber == mpesaNumber) &&
            (identical(other.emolaNumber, emolaNumber) ||
                other.emolaNumber == emolaNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    userId,
    documentType,
    documentNumber,
    documentImage,
    address,
    city,
    provinceCode,
    countryCode,
    postalCode,
    bankName,
    bankAccountNumber,
    bankAccountHolder,
    mpesaNumber,
    emolaNumber,
    status,
    isVerified,
    verifiedAt,
    isActive,
    created_at,
    updated_at,
    const DeepCollectionEquality().hash(_metadata),
  ]);

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SellerModelImplCopyWith<_$SellerModelImpl> get copyWith =>
      __$$SellerModelImplCopyWithImpl<_$SellerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SellerModelImplToJson(this);
  }
}

abstract class _SellerModel implements SellerModel {
  const factory _SellerModel({
    required final String id,
    required final String userId,
    final String? documentType,
    final String? documentNumber,
    final String? documentImage,
    final String? address,
    final String? city,
    final String provinceCode,
    final String countryCode,
    final String? postalCode,
    final String? bankName,
    final String? bankAccountNumber,
    final String? bankAccountHolder,
    final String? mpesaNumber,
    final String? emolaNumber,
    final SellerStatus status,
    final bool isVerified,
    final DateTime? verifiedAt,
    final bool isActive,
    required final DateTime created_at,
    required final DateTime updated_at,
    final Map<String, dynamic>? metadata,
  }) = _$SellerModelImpl;

  factory _SellerModel.fromJson(Map<String, dynamic> json) =
      _$SellerModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId; // FK → users.id
  // Documentação (KYC)
  @override
  String? get documentType;
  @override
  String? get documentNumber;
  @override
  String? get documentImage; // Endereço
  @override
  String? get address;
  @override
  String? get city;
  @override
  String get provinceCode;
  @override
  String get countryCode;
  @override
  String? get postalCode; // Dados bancários
  @override
  String? get bankName;
  @override
  String? get bankAccountNumber;
  @override
  String? get bankAccountHolder;
  @override
  String? get mpesaNumber;
  @override
  String? get emolaNumber; // Status
  @override
  SellerStatus get status;
  @override
  bool get isVerified;
  @override
  DateTime? get verifiedAt;
  @override
  bool get isActive; // Datas
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at; // Dados extras
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SellerModelImplCopyWith<_$SellerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
