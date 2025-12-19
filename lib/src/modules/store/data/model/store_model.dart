import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_model.freezed.dart';
part 'store_model.g.dart';

enum StoreStatus { draft, active, suspended, closed }

enum StoreType { physical, online, both }

@freezed
class StoreModel with _$StoreModel {
  const factory StoreModel({
    required String id,
    required String sellerId, // FK → sellers.id
    required String name,
    required String slug,
    String? description,
    String? logo,
    String? coverImage,
    @Default(<String>[]) List<String> images,
    @Default(StoreType.online) StoreType storeType,

    // Localização
    String? address,
    String? city,
    @Default('') String provinceCode,
    @Default('MZ') String countryCode,
    String? postalCode,
    double? latitude,
    double? longitude,

    // Contato
    String? phone,
    String? whatsapp,
    String? email,
    String? website,
    String? facebook,
    String? instagram,

    // Horário
    Map<String, dynamic>? businessHours,

    // Status
    @Default(StoreStatus.draft) StoreStatus status,
    @Default(true) bool isActive,
    @Default(false) bool isVerified,
    @Default(false) bool acceptsOnlinePayment,
    @Default(false) bool acceptsCash,
    @Default(false) bool hasDelivery,

    // SEO
    String? metaTitle,
    String? metaDescription,
    @Default(<String>[]) List<String> keywords,
    Map<String, dynamic>? theme,

    // Estatísticas (apenas contadores que são custosos calcular)
    @Default(0) int viewCount, // ← OK manter
    @Default(0.0) double rating, // ← OK manter (média complexa)
    @Default(0) int reviewCount, // ← OK manter
    // Datas
    required DateTime created_at,
    required DateTime updated_at,
    DateTime? publishedAt,

    Map<String, dynamic>? metadata,
  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
}
