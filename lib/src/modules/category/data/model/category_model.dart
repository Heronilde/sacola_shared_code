import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String id,
    required String name,
    required String slug,
    String? description,
    String? icon,
    String? image,
    String? parentId, // FK → categories.id (auto-referência)
    @Default(0) int order,
    @Default(true) bool isActive,
    required DateTime created_at,
    required DateTime updated_at,
    Map<String, dynamic>? metadata,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
