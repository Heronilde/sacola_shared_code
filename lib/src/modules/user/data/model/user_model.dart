import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum UserRole { seller, admin }

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    String? email,
    String? phone,
    required String nome,
    String? profile_picture,
    required UserRole role,
    required DateTime created_at,
    required DateTime updated_at,
    @Default(false) bool isOnline,
    @Default(true) bool isActive,
    @Default('') String provinceCode,
    @Default('MZ') String countryCode,
    String? sellerId,
    @Default(<String>[]) List<String> fcmTokens,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
