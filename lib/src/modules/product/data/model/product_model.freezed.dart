// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get id => throw _privateConstructorUsedError;
  String get storeId =>
      throw _privateConstructorUsedError; // Informações básicas
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get shortDescription =>
      throw _privateConstructorUsedError; // Categoria
  String? get categoryId => throw _privateConstructorUsedError;
  String? get subcategoryId => throw _privateConstructorUsedError;
  List<String> get tags =>
      throw _privateConstructorUsedError; // Preços e estoque
  double get price => throw _privateConstructorUsedError;
  double? get compareAtPrice => throw _privateConstructorUsedError;
  double? get costPrice => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  bool get trackInventory => throw _privateConstructorUsedError;
  int? get lowStockThreshold => throw _privateConstructorUsedError; // Imagens
  String? get mainImage => throw _privateConstructorUsedError;
  List<String> get images =>
      throw _privateConstructorUsedError; // Especificações
  String? get sku => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  ProductCondition get condition =>
      throw _privateConstructorUsedError; // Variações - SIMPLIFICADO
  String? get variants =>
      throw _privateConstructorUsedError; // JSON string ao invés de List<Map>
  // Status
  ProductStatus get status => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  bool get isDigital => throw _privateConstructorUsedError; // SEO
  String? get metaTitle => throw _privateConstructorUsedError;
  String? get metaDescription =>
      throw _privateConstructorUsedError; // Estatísticas
  int get viewCount => throw _privateConstructorUsedError;
  int get favoriteCount => throw _privateConstructorUsedError;
  int get soldCount => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError; // Datas
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  DateTime? get publishedAt =>
      throw _privateConstructorUsedError; // Dados extras - SIMPLIFICADO
  String? get metadata => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
    ProductModel value,
    $Res Function(ProductModel) then,
  ) = _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call({
    String id,
    String storeId,
    String name,
    String slug,
    String? description,
    String? shortDescription,
    String? categoryId,
    String? subcategoryId,
    List<String> tags,
    double price,
    double? compareAtPrice,
    double? costPrice,
    String currency,
    int stock,
    bool trackInventory,
    int? lowStockThreshold,
    String? mainImage,
    List<String> images,
    String? sku,
    String? barcode,
    double? weight,
    double? length,
    double? width,
    double? height,
    ProductCondition condition,
    String? variants,
    ProductStatus status,
    bool isActive,
    bool isFeatured,
    bool isDigital,
    String? metaTitle,
    String? metaDescription,
    int viewCount,
    int favoriteCount,
    int soldCount,
    double rating,
    int reviewCount,
    DateTime created_at,
    DateTime updated_at,
    DateTime? publishedAt,
    String? metadata,
  });
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? categoryId = freezed,
    Object? subcategoryId = freezed,
    Object? tags = null,
    Object? price = null,
    Object? compareAtPrice = freezed,
    Object? costPrice = freezed,
    Object? currency = null,
    Object? stock = null,
    Object? trackInventory = null,
    Object? lowStockThreshold = freezed,
    Object? mainImage = freezed,
    Object? images = null,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? weight = freezed,
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? condition = null,
    Object? variants = freezed,
    Object? status = null,
    Object? isActive = null,
    Object? isFeatured = null,
    Object? isDigital = null,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? viewCount = null,
    Object? favoriteCount = null,
    Object? soldCount = null,
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
            storeId: null == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
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
            shortDescription: freezed == shortDescription
                ? _value.shortDescription
                : shortDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String?,
            subcategoryId: freezed == subcategoryId
                ? _value.subcategoryId
                : subcategoryId // ignore: cast_nullable_to_non_nullable
                      as String?,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            compareAtPrice: freezed == compareAtPrice
                ? _value.compareAtPrice
                : compareAtPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            costPrice: freezed == costPrice
                ? _value.costPrice
                : costPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            stock: null == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                      as int,
            trackInventory: null == trackInventory
                ? _value.trackInventory
                : trackInventory // ignore: cast_nullable_to_non_nullable
                      as bool,
            lowStockThreshold: freezed == lowStockThreshold
                ? _value.lowStockThreshold
                : lowStockThreshold // ignore: cast_nullable_to_non_nullable
                      as int?,
            mainImage: freezed == mainImage
                ? _value.mainImage
                : mainImage // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            sku: freezed == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                      as String?,
            barcode: freezed == barcode
                ? _value.barcode
                : barcode // ignore: cast_nullable_to_non_nullable
                      as String?,
            weight: freezed == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as double?,
            length: freezed == length
                ? _value.length
                : length // ignore: cast_nullable_to_non_nullable
                      as double?,
            width: freezed == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as double?,
            height: freezed == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as double?,
            condition: null == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                      as ProductCondition,
            variants: freezed == variants
                ? _value.variants
                : variants // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ProductStatus,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isFeatured: null == isFeatured
                ? _value.isFeatured
                : isFeatured // ignore: cast_nullable_to_non_nullable
                      as bool,
            isDigital: null == isDigital
                ? _value.isDigital
                : isDigital // ignore: cast_nullable_to_non_nullable
                      as bool,
            metaTitle: freezed == metaTitle
                ? _value.metaTitle
                : metaTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            metaDescription: freezed == metaDescription
                ? _value.metaDescription
                : metaDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            viewCount: null == viewCount
                ? _value.viewCount
                : viewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            favoriteCount: null == favoriteCount
                ? _value.favoriteCount
                : favoriteCount // ignore: cast_nullable_to_non_nullable
                      as int,
            soldCount: null == soldCount
                ? _value.soldCount
                : soldCount // ignore: cast_nullable_to_non_nullable
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
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
    _$ProductModelImpl value,
    $Res Function(_$ProductModelImpl) then,
  ) = __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String storeId,
    String name,
    String slug,
    String? description,
    String? shortDescription,
    String? categoryId,
    String? subcategoryId,
    List<String> tags,
    double price,
    double? compareAtPrice,
    double? costPrice,
    String currency,
    int stock,
    bool trackInventory,
    int? lowStockThreshold,
    String? mainImage,
    List<String> images,
    String? sku,
    String? barcode,
    double? weight,
    double? length,
    double? width,
    double? height,
    ProductCondition condition,
    String? variants,
    ProductStatus status,
    bool isActive,
    bool isFeatured,
    bool isDigital,
    String? metaTitle,
    String? metaDescription,
    int viewCount,
    int favoriteCount,
    int soldCount,
    double rating,
    int reviewCount,
    DateTime created_at,
    DateTime updated_at,
    DateTime? publishedAt,
    String? metadata,
  });
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
    _$ProductModelImpl _value,
    $Res Function(_$ProductModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? categoryId = freezed,
    Object? subcategoryId = freezed,
    Object? tags = null,
    Object? price = null,
    Object? compareAtPrice = freezed,
    Object? costPrice = freezed,
    Object? currency = null,
    Object? stock = null,
    Object? trackInventory = null,
    Object? lowStockThreshold = freezed,
    Object? mainImage = freezed,
    Object? images = null,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? weight = freezed,
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? condition = null,
    Object? variants = freezed,
    Object? status = null,
    Object? isActive = null,
    Object? isFeatured = null,
    Object? isDigital = null,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? viewCount = null,
    Object? favoriteCount = null,
    Object? soldCount = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? publishedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$ProductModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        storeId: null == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
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
        shortDescription: freezed == shortDescription
            ? _value.shortDescription
            : shortDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        categoryId: freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        subcategoryId: freezed == subcategoryId
            ? _value.subcategoryId
            : subcategoryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        compareAtPrice: freezed == compareAtPrice
            ? _value.compareAtPrice
            : compareAtPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        costPrice: freezed == costPrice
            ? _value.costPrice
            : costPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        stock: null == stock
            ? _value.stock
            : stock // ignore: cast_nullable_to_non_nullable
                  as int,
        trackInventory: null == trackInventory
            ? _value.trackInventory
            : trackInventory // ignore: cast_nullable_to_non_nullable
                  as bool,
        lowStockThreshold: freezed == lowStockThreshold
            ? _value.lowStockThreshold
            : lowStockThreshold // ignore: cast_nullable_to_non_nullable
                  as int?,
        mainImage: freezed == mainImage
            ? _value.mainImage
            : mainImage // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        sku: freezed == sku
            ? _value.sku
            : sku // ignore: cast_nullable_to_non_nullable
                  as String?,
        barcode: freezed == barcode
            ? _value.barcode
            : barcode // ignore: cast_nullable_to_non_nullable
                  as String?,
        weight: freezed == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as double?,
        length: freezed == length
            ? _value.length
            : length // ignore: cast_nullable_to_non_nullable
                  as double?,
        width: freezed == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as double?,
        height: freezed == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as double?,
        condition: null == condition
            ? _value.condition
            : condition // ignore: cast_nullable_to_non_nullable
                  as ProductCondition,
        variants: freezed == variants
            ? _value.variants
            : variants // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ProductStatus,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isFeatured: null == isFeatured
            ? _value.isFeatured
            : isFeatured // ignore: cast_nullable_to_non_nullable
                  as bool,
        isDigital: null == isDigital
            ? _value.isDigital
            : isDigital // ignore: cast_nullable_to_non_nullable
                  as bool,
        metaTitle: freezed == metaTitle
            ? _value.metaTitle
            : metaTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        metaDescription: freezed == metaDescription
            ? _value.metaDescription
            : metaDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        viewCount: null == viewCount
            ? _value.viewCount
            : viewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        favoriteCount: null == favoriteCount
            ? _value.favoriteCount
            : favoriteCount // ignore: cast_nullable_to_non_nullable
                  as int,
        soldCount: null == soldCount
            ? _value.soldCount
            : soldCount // ignore: cast_nullable_to_non_nullable
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
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl({
    required this.id,
    required this.storeId,
    required this.name,
    required this.slug,
    this.description,
    this.shortDescription,
    this.categoryId,
    this.subcategoryId,
    final List<String> tags = const [],
    required this.price,
    this.compareAtPrice,
    this.costPrice,
    this.currency = 'MZN',
    this.stock = 0,
    this.trackInventory = false,
    this.lowStockThreshold,
    this.mainImage,
    final List<String> images = const [],
    this.sku,
    this.barcode,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.condition = ProductCondition.newProduct,
    this.variants,
    this.status = ProductStatus.active,
    this.isActive = true,
    this.isFeatured = false,
    this.isDigital = false,
    this.metaTitle,
    this.metaDescription,
    this.viewCount = 0,
    this.favoriteCount = 0,
    this.soldCount = 0,
    this.rating = 0.0,
    this.reviewCount = 0,
    required this.created_at,
    required this.updated_at,
    this.publishedAt,
    this.metadata,
  }) : _tags = tags,
       _images = images;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String id;
  @override
  final String storeId;
  // Informações básicas
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String? shortDescription;
  // Categoria
  @override
  final String? categoryId;
  @override
  final String? subcategoryId;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  // Preços e estoque
  @override
  final double price;
  @override
  final double? compareAtPrice;
  @override
  final double? costPrice;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final int stock;
  @override
  @JsonKey()
  final bool trackInventory;
  @override
  final int? lowStockThreshold;
  // Imagens
  @override
  final String? mainImage;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  // Especificações
  @override
  final String? sku;
  @override
  final String? barcode;
  @override
  final double? weight;
  @override
  final double? length;
  @override
  final double? width;
  @override
  final double? height;
  @override
  @JsonKey()
  final ProductCondition condition;
  // Variações - SIMPLIFICADO
  @override
  final String? variants;
  // JSON string ao invés de List<Map>
  // Status
  @override
  @JsonKey()
  final ProductStatus status;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isFeatured;
  @override
  @JsonKey()
  final bool isDigital;
  // SEO
  @override
  final String? metaTitle;
  @override
  final String? metaDescription;
  // Estatísticas
  @override
  @JsonKey()
  final int viewCount;
  @override
  @JsonKey()
  final int favoriteCount;
  @override
  @JsonKey()
  final int soldCount;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int reviewCount;
  // Datas
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;
  @override
  final DateTime? publishedAt;
  // Dados extras - SIMPLIFICADO
  @override
  final String? metadata;

  @override
  String toString() {
    return 'ProductModel(id: $id, storeId: $storeId, name: $name, slug: $slug, description: $description, shortDescription: $shortDescription, categoryId: $categoryId, subcategoryId: $subcategoryId, tags: $tags, price: $price, compareAtPrice: $compareAtPrice, costPrice: $costPrice, currency: $currency, stock: $stock, trackInventory: $trackInventory, lowStockThreshold: $lowStockThreshold, mainImage: $mainImage, images: $images, sku: $sku, barcode: $barcode, weight: $weight, length: $length, width: $width, height: $height, condition: $condition, variants: $variants, status: $status, isActive: $isActive, isFeatured: $isFeatured, isDigital: $isDigital, metaTitle: $metaTitle, metaDescription: $metaDescription, viewCount: $viewCount, favoriteCount: $favoriteCount, soldCount: $soldCount, rating: $rating, reviewCount: $reviewCount, created_at: $created_at, updated_at: $updated_at, publishedAt: $publishedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subcategoryId, subcategoryId) ||
                other.subcategoryId == subcategoryId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.compareAtPrice, compareAtPrice) ||
                other.compareAtPrice == compareAtPrice) &&
            (identical(other.costPrice, costPrice) ||
                other.costPrice == costPrice) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.trackInventory, trackInventory) ||
                other.trackInventory == trackInventory) &&
            (identical(other.lowStockThreshold, lowStockThreshold) ||
                other.lowStockThreshold == lowStockThreshold) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.variants, variants) ||
                other.variants == variants) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isDigital, isDigital) ||
                other.isDigital == isDigital) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.soldCount, soldCount) ||
                other.soldCount == soldCount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    storeId,
    name,
    slug,
    description,
    shortDescription,
    categoryId,
    subcategoryId,
    const DeepCollectionEquality().hash(_tags),
    price,
    compareAtPrice,
    costPrice,
    currency,
    stock,
    trackInventory,
    lowStockThreshold,
    mainImage,
    const DeepCollectionEquality().hash(_images),
    sku,
    barcode,
    weight,
    length,
    width,
    height,
    condition,
    variants,
    status,
    isActive,
    isFeatured,
    isDigital,
    metaTitle,
    metaDescription,
    viewCount,
    favoriteCount,
    soldCount,
    rating,
    reviewCount,
    created_at,
    updated_at,
    publishedAt,
    metadata,
  ]);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel({
    required final String id,
    required final String storeId,
    required final String name,
    required final String slug,
    final String? description,
    final String? shortDescription,
    final String? categoryId,
    final String? subcategoryId,
    final List<String> tags,
    required final double price,
    final double? compareAtPrice,
    final double? costPrice,
    final String currency,
    final int stock,
    final bool trackInventory,
    final int? lowStockThreshold,
    final String? mainImage,
    final List<String> images,
    final String? sku,
    final String? barcode,
    final double? weight,
    final double? length,
    final double? width,
    final double? height,
    final ProductCondition condition,
    final String? variants,
    final ProductStatus status,
    final bool isActive,
    final bool isFeatured,
    final bool isDigital,
    final String? metaTitle,
    final String? metaDescription,
    final int viewCount,
    final int favoriteCount,
    final int soldCount,
    final double rating,
    final int reviewCount,
    required final DateTime created_at,
    required final DateTime updated_at,
    final DateTime? publishedAt,
    final String? metadata,
  }) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String get id;
  @override
  String get storeId; // Informações básicas
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String? get shortDescription; // Categoria
  @override
  String? get categoryId;
  @override
  String? get subcategoryId;
  @override
  List<String> get tags; // Preços e estoque
  @override
  double get price;
  @override
  double? get compareAtPrice;
  @override
  double? get costPrice;
  @override
  String get currency;
  @override
  int get stock;
  @override
  bool get trackInventory;
  @override
  int? get lowStockThreshold; // Imagens
  @override
  String? get mainImage;
  @override
  List<String> get images; // Especificações
  @override
  String? get sku;
  @override
  String? get barcode;
  @override
  double? get weight;
  @override
  double? get length;
  @override
  double? get width;
  @override
  double? get height;
  @override
  ProductCondition get condition; // Variações - SIMPLIFICADO
  @override
  String? get variants; // JSON string ao invés de List<Map>
  // Status
  @override
  ProductStatus get status;
  @override
  bool get isActive;
  @override
  bool get isFeatured;
  @override
  bool get isDigital; // SEO
  @override
  String? get metaTitle;
  @override
  String? get metaDescription; // Estatísticas
  @override
  int get viewCount;
  @override
  int get favoriteCount;
  @override
  int get soldCount;
  @override
  double get rating;
  @override
  int get reviewCount; // Datas
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;
  @override
  DateTime? get publishedAt; // Dados extras - SIMPLIFICADO
  @override
  String? get metadata;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
