import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_model.freezed.dart';
part 'seller_model.g.dart';

enum SellerStatus { pending, active, suspended, inactive }

@freezed
class SellerModel with _$SellerModel {
  const factory SellerModel({
    required String id,
    required String userId, // FK → users.id
    // Documentação (KYC)
    String? documentType,
    String? documentNumber,
    String? documentImage,

    // Endereço
    String? address,
    String? city,
    @Default('') String provinceCode,
    @Default('MZ') String countryCode,
    String? postalCode,

    // Dados bancários
    String? bankName,
    String? bankAccountNumber,
    String? bankAccountHolder,
    String? mpesaNumber,
    String? emolaNumber,

    // Status
    @Default(SellerStatus.pending) SellerStatus status,
    @Default(false) bool isVerified,
    DateTime? verifiedAt,
    @Default(true) bool isActive,

    // Datas
    required DateTime created_at,
    required DateTime updated_at,

    // Dados extras
    Map<String, dynamic>? metadata,
  }) = _SellerModel;

  factory SellerModel.fromJson(Map<String, dynamic> json) =>
      _$SellerModelFromJson(json);
}
