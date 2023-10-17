// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import '../types/role.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) int? createdAt,
    @Default('') String? firstName,
    required String id,
    @Default('') String? imageUrl,
    @Default('') String? lastName,
    @Default('') String? lastSeen,
    @Default(<String, dynamic>{}) Map<String, dynamic>? metadata,
    @Default(Role.admin) Role? role,
    @Default(0) int? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
