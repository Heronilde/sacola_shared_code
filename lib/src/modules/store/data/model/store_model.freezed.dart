// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) {
  return _StoreModel.fromJson(json);
}

/// @nodoc
mixin _$StoreModel {
  String get id => throw _privateConstructorUsedError;
  String get sellerId => throw _privateConstructorUsedError; // FK → sellers.id
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  StoreType get storeType => throw _privateConstructorUsedError; // Localização
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String get provinceCode => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError; // Contato
  String? get phone => throw _privateConstructorUsedError;
  String? get whatsapp => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError; // Horário
  Map<String, dynamic>? get businessHours =>
      throw _privateConstructorUsedError; // Status
  StoreStatus get status => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get acceptsOnlinePayment => throw _privateConstructorUsedError;
  bool get acceptsCash => throw _privateConstructorUsedError;
  bool get hasDelivery => throw _privateConstructorUsedError; // SEO
  String? get metaTitle => throw _privateConstructorUsedError;
  String? get metaDescription => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;
  Map<String, dynamic>? get theme =>
      throw _privateConstructorUsedError; // Estatísticas (apenas contadores que são custosos calcular)
  int get viewCount => throw _privateConstructorUsedError; // ← OK manter
  double get rating =>
      throw _privateConstructorUsedError; // ← OK manter (média complexa)
  int get reviewCount => throw _privateConstructorUsedError; // ← OK manter
  // Datas
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this StoreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreModelCopyWith<StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreModelCopyWith<$Res> {
  factory $StoreModelCopyWith(
    StoreModel value,
    $Res Function(StoreModel) then,
  ) = _$StoreModelCopyWithImpl<$Res, StoreModel>;
  @useResult
  $Res call({
    String id,
    String sellerId,
    String name,
    String slug,
    String? description,
    String? logo,
    String? coverImage,
    List<String> images,
    StoreType storeType,
    String? address,
    String? city,
    String provinceCode,
    String countryCode,
    String? postalCode,
    double? latitude,
    double? longitude,
    String? phone,
    String? whatsapp,
    String? email,
    String? website,
    String? facebook,
    String? instagram,
    Map<String, dynamic>? businessHours,
    StoreStatus status,
    bool isActive,
    bool isVerified,
    bool acceptsOnlinePayment,
    bool acceptsCash,
    bool hasDelivery,
    String? metaTitle,
    String? metaDescription,
    List<String> keywords,
    Map<String, dynamic>? theme,
    int viewCount,
    double rating,
    int reviewCount,
    DateTime created_at,
    DateTime updated_at,
    DateTime? publishedAt,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$StoreModelCopyWithImpl<$Res, $Val extends StoreModel>
    implements $StoreModelCopyWith<$Res> {
  _$StoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerId = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? images = null,
    Object? storeType = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? provinceCode = null,
    Object? countryCode = null,
    Object? postalCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? phone = freezed,
    Object? whatsapp = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? businessHours = freezed,
    Object? status = null,
    Object? isActive = null,
    Object? isVerified = null,
    Object? acceptsOnlinePayment = null,
    Object? acceptsCash = null,
    Object? hasDelivery = null,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? keywords = null,
    Object? theme = freezed,
    Object? viewCount = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? publishedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            sellerId: null == sellerId
                ? _value.sellerId
                : sellerId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            logo: freezed == logo
                ? _value.logo
                : logo // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverImage: freezed == coverImage
                ? _value.coverImage
                : coverImage // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            storeType: null == storeType
                ? _value.storeType
                : storeType // ignore: cast_nullable_to_non_nullable
                      as StoreType,
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
            latitude: freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            longitude: freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            whatsapp: freezed == whatsapp
                ? _value.whatsapp
                : whatsapp // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            website: freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                      as String?,
            facebook: freezed == facebook
                ? _value.facebook
                : facebook // ignore: cast_nullable_to_non_nullable
                      as String?,
            instagram: freezed == instagram
                ? _value.instagram
                : instagram // ignore: cast_nullable_to_non_nullable
                      as String?,
            businessHours: freezed == businessHours
                ? _value.businessHours
                : businessHours // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as StoreStatus,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            acceptsOnlinePayment: null == acceptsOnlinePayment
                ? _value.acceptsOnlinePayment
                : acceptsOnlinePayment // ignore: cast_nullable_to_non_nullable
                      as bool,
            acceptsCash: null == acceptsCash
                ? _value.acceptsCash
                : acceptsCash // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasDelivery: null == hasDelivery
                ? _value.hasDelivery
                : hasDelivery // ignore: cast_nullable_to_non_nullable
                      as bool,
            metaTitle: freezed == metaTitle
                ? _value.metaTitle
                : metaTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            metaDescription: freezed == metaDescription
                ? _value.metaDescription
                : metaDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            keywords: null == keywords
                ? _value.keywords
                : keywords // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            theme: freezed == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            viewCount: null == viewCount
                ? _value.viewCount
                : viewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            reviewCount: null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            created_at: null == created_at
                ? _value.created_at
                : created_at // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updated_at: null == updated_at
                ? _value.updated_at
                : updated_at // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            publishedAt: freezed == publishedAt
                ? _value.publishedAt
                : publishedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
abstract class _$$StoreModelImplCopyWith<$Res>
    implements $StoreModelCopyWith<$Res> {
  factory _$$StoreModelImplCopyWith(
    _$StoreModelImpl value,
    $Res Function(_$StoreModelImpl) then,
  ) = __$$StoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String sellerId,
    String name,
    String slug,
    String? description,
    String? logo,
    String? coverImage,
    List<String> images,
    StoreType storeType,
    String? address,
    String? city,
    String provinceCode,
    String countryCode,
    String? postalCode,
    double? latitude,
    double? longitude,
    String? phone,
    String? whatsapp,
    String? email,
    String? website,
    String? facebook,
    String? instagram,
    Map<String, dynamic>? businessHours,
    StoreStatus status,
    bool isActive,
    bool isVerified,
    bool acceptsOnlinePayment,
    bool acceptsCash,
    bool hasDelivery,
    String? metaTitle,
    String? metaDescription,
    List<String> keywords,
    Map<String, dynamic>? theme,
    int viewCount,
    double rating,
    int reviewCount,
    DateTime created_at,
    DateTime updated_at,
    DateTime? publishedAt,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$StoreModelImplCopyWithImpl<$Res>
    extends _$StoreModelCopyWithImpl<$Res, _$StoreModelImpl>
    implements _$$StoreModelImplCopyWith<$Res> {
  __$$StoreModelImplCopyWithImpl(
    _$StoreModelImpl _value,
    $Res Function(_$StoreModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerId = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? images = null,
    Object? storeType = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? provinceCode = null,
    Object? countryCode = null,
    Object? postalCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? phone = freezed,
    Object? whatsapp = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? businessHours = freezed,
    Object? status = null,
    Object? isActive = null,
    Object? isVerified = null,
    Object? acceptsOnlinePayment = null,
    Object? acceptsCash = null,
    Object? hasDelivery = null,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? keywords = null,
    Object? theme = freezed,
    Object? viewCount = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? publishedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$StoreModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        sellerId: null == sellerId
            ? _value.sellerId
            : sellerId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        logo: freezed == logo
            ? _value.logo
            : logo // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverImage: freezed == coverImage
            ? _value.coverImage
            : coverImage // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        storeType: null == storeType
            ? _value.storeType
            : storeType // ignore: cast_nullable_to_non_nullable
                  as StoreType,
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
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        whatsapp: freezed == whatsapp
            ? _value.whatsapp
            : whatsapp // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        website: freezed == website
            ? _value.website
            : website // ignore: cast_nullable_to_non_nullable
                  as String?,
        facebook: freezed == facebook
            ? _value.facebook
            : facebook // ignore: cast_nullable_to_non_nullable
                  as String?,
        instagram: freezed == instagram
            ? _value.instagram
            : instagram // ignore: cast_nullable_to_non_nullable
                  as String?,
        businessHours: freezed == businessHours
            ? _value._businessHours
            : businessHours // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as StoreStatus,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        acceptsOnlinePayment: null == acceptsOnlinePayment
            ? _value.acceptsOnlinePayment
            : acceptsOnlinePayment // ignore: cast_nullable_to_non_nullable
                  as bool,
        acceptsCash: null == acceptsCash
            ? _value.acceptsCash
            : acceptsCash // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasDelivery: null == hasDelivery
            ? _value.hasDelivery
            : hasDelivery // ignore: cast_nullable_to_non_nullable
                  as bool,
        metaTitle: freezed == metaTitle
            ? _value.metaTitle
            : metaTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        metaDescription: freezed == metaDescription
            ? _value.metaDescription
            : metaDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        keywords: null == keywords
            ? _value._keywords
            : keywords // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        theme: freezed == theme
            ? _value._theme
            : theme // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        viewCount: null == viewCount
            ? _value.viewCount
            : viewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        reviewCount: null == reviewCount
            ? _value.reviewCount
            : reviewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        created_at: null == created_at
            ? _value.created_at
            : created_at // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updated_at: null == updated_at
            ? _value.updated_at
            : updated_at // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        publishedAt: freezed == publishedAt
            ? _value.publishedAt
            : publishedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
class _$StoreModelImpl implements _StoreModel {
  const _$StoreModelImpl({
    required this.id,
    required this.sellerId,
    required this.name,
    required this.slug,
    this.description,
    this.logo,
    this.coverImage,
    final List<String> images = const <String>[],
    this.storeType = StoreType.online,
    this.address,
    this.city,
    this.provinceCode = '',
    this.countryCode = 'MZ',
    this.postalCode,
    this.latitude,
    this.longitude,
    this.phone,
    this.whatsapp,
    this.email,
    this.website,
    this.facebook,
    this.instagram,
    final Map<String, dynamic>? businessHours,
    this.status = StoreStatus.draft,
    this.isActive = true,
    this.isVerified = false,
    this.acceptsOnlinePayment = false,
    this.acceptsCash = false,
    this.hasDelivery = false,
    this.metaTitle,
    this.metaDescription,
    final List<String> keywords = const <String>[],
    final Map<String, dynamic>? theme,
    this.viewCount = 0,
    this.rating = 0.0,
    this.reviewCount = 0,
    required this.created_at,
    required this.updated_at,
    this.publishedAt,
    final Map<String, dynamic>? metadata,
  }) : _images = images,
       _businessHours = businessHours,
       _keywords = keywords,
       _theme = theme,
       _metadata = metadata;

  factory _$StoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreModelImplFromJson(json);

  @override
  final String id;
  @override
  final String sellerId;
  // FK → sellers.id
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String? logo;
  @override
  final String? coverImage;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final StoreType storeType;
  // Localização
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
  @override
  final double? latitude;
  @override
  final double? longitude;
  // Contato
  @override
  final String? phone;
  @override
  final String? whatsapp;
  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? facebook;
  @override
  final String? instagram;
  // Horário
  final Map<String, dynamic>? _businessHours;
  // Horário
  @override
  Map<String, dynamic>? get businessHours {
    final value = _businessHours;
    if (value == null) return null;
    if (_businessHours is EqualUnmodifiableMapView) return _businessHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  // Status
  @override
  @JsonKey()
  final StoreStatus status;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final bool acceptsOnlinePayment;
  @override
  @JsonKey()
  final bool acceptsCash;
  @override
  @JsonKey()
  final bool hasDelivery;
  // SEO
  @override
  final String? metaTitle;
  @override
  final String? metaDescription;
  final List<String> _keywords;
  @override
  @JsonKey()
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  final Map<String, dynamic>? _theme;
  @override
  Map<String, dynamic>? get theme {
    final value = _theme;
    if (value == null) return null;
    if (_theme is EqualUnmodifiableMapView) return _theme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  // Estatísticas (apenas contadores que são custosos calcular)
  @override
  @JsonKey()
  final int viewCount;
  // ← OK manter
  @override
  @JsonKey()
  final double rating;
  // ← OK manter (média complexa)
  @override
  @JsonKey()
  final int reviewCount;
  // ← OK manter
  // Datas
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;
  @override
  final DateTime? publishedAt;
  final Map<String, dynamic>? _metadata;
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
    return 'StoreModel(id: $id, sellerId: $sellerId, name: $name, slug: $slug, description: $description, logo: $logo, coverImage: $coverImage, images: $images, storeType: $storeType, address: $address, city: $city, provinceCode: $provinceCode, countryCode: $countryCode, postalCode: $postalCode, latitude: $latitude, longitude: $longitude, phone: $phone, whatsapp: $whatsapp, email: $email, website: $website, facebook: $facebook, instagram: $instagram, businessHours: $businessHours, status: $status, isActive: $isActive, isVerified: $isVerified, acceptsOnlinePayment: $acceptsOnlinePayment, acceptsCash: $acceptsCash, hasDelivery: $hasDelivery, metaTitle: $metaTitle, metaDescription: $metaDescription, keywords: $keywords, theme: $theme, viewCount: $viewCount, rating: $rating, reviewCount: $reviewCount, created_at: $created_at, updated_at: $updated_at, publishedAt: $publishedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.storeType, storeType) ||
                other.storeType == storeType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.provinceCode, provinceCode) ||
                other.provinceCode == provinceCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            const DeepCollectionEquality().equals(
              other._businessHours,
              _businessHours,
            ) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.acceptsOnlinePayment, acceptsOnlinePayment) ||
                other.acceptsOnlinePayment == acceptsOnlinePayment) &&
            (identical(other.acceptsCash, acceptsCash) ||
                other.acceptsCash == acceptsCash) &&
            (identical(other.hasDelivery, hasDelivery) ||
                other.hasDelivery == hasDelivery) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            const DeepCollectionEquality().equals(other._theme, _theme) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    sellerId,
    name,
    slug,
    description,
    logo,
    coverImage,
    const DeepCollectionEquality().hash(_images),
    storeType,
    address,
    city,
    provinceCode,
    countryCode,
    postalCode,
    latitude,
    longitude,
    phone,
    whatsapp,
    email,
    website,
    facebook,
    instagram,
    const DeepCollectionEquality().hash(_businessHours),
    status,
    isActive,
    isVerified,
    acceptsOnlinePayment,
    acceptsCash,
    hasDelivery,
    metaTitle,
    metaDescription,
    const DeepCollectionEquality().hash(_keywords),
    const DeepCollectionEquality().hash(_theme),
    viewCount,
    rating,
    reviewCount,
    created_at,
    updated_at,
    publishedAt,
    const DeepCollectionEquality().hash(_metadata),
  ]);

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreModelImplCopyWith<_$StoreModelImpl> get copyWith =>
      __$$StoreModelImplCopyWithImpl<_$StoreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreModelImplToJson(this);
  }
}

abstract class _StoreModel implements StoreModel {
  const factory _StoreModel({
    required final String id,
    required final String sellerId,
    required final String name,
    required final String slug,
    final String? description,
    final String? logo,
    final String? coverImage,
    final List<String> images,
    final StoreType storeType,
    final String? address,
    final String? city,
    final String provinceCode,
    final String countryCode,
    final String? postalCode,
    final double? latitude,
    final double? longitude,
    final String? phone,
    final String? whatsapp,
    final String? email,
    final String? website,
    final String? facebook,
    final String? instagram,
    final Map<String, dynamic>? businessHours,
    final StoreStatus status,
    final bool isActive,
    final bool isVerified,
    final bool acceptsOnlinePayment,
    final bool acceptsCash,
    final bool hasDelivery,
    final String? metaTitle,
    final String? metaDescription,
    final List<String> keywords,
    final Map<String, dynamic>? theme,
    final int viewCount,
    final double rating,
    final int reviewCount,
    required final DateTime created_at,
    required final DateTime updated_at,
    final DateTime? publishedAt,
    final Map<String, dynamic>? metadata,
  }) = _$StoreModelImpl;

  factory _StoreModel.fromJson(Map<String, dynamic> json) =
      _$StoreModelImpl.fromJson;

  @override
  String get id;
  @override
  String get sellerId; // FK → sellers.id
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String? get logo;
  @override
  String? get coverImage;
  @override
  List<String> get images;
  @override
  StoreType get storeType; // Localização
  @override
  String? get address;
  @override
  String? get city;
  @override
  String get provinceCode;
  @override
  String get countryCode;
  @override
  String? get postalCode;
  @override
  double? get latitude;
  @override
  double? get longitude; // Contato
  @override
  String? get phone;
  @override
  String? get whatsapp;
  @override
  String? get email;
  @override
  String? get website;
  @override
  String? get facebook;
  @override
  String? get instagram; // Horário
  @override
  Map<String, dynamic>? get businessHours; // Status
  @override
  StoreStatus get status;
  @override
  bool get isActive;
  @override
  bool get isVerified;
  @override
  bool get acceptsOnlinePayment;
  @override
  bool get acceptsCash;
  @override
  bool get hasDelivery; // SEO
  @override
  String? get metaTitle;
  @override
  String? get metaDescription;
  @override
  List<String> get keywords;
  @override
  Map<String, dynamic>? get theme; // Estatísticas (apenas contadores que são custosos calcular)
  @override
  int get viewCount; // ← OK manter
  @override
  double get rating; // ← OK manter (média complexa)
  @override
  int get reviewCount; // ← OK manter
  // Datas
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;
  @override
  DateTime? get publishedAt;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreModelImplCopyWith<_$StoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
