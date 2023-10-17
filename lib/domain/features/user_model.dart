// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import '../types/role.dart';

part '../user_model.freezed.dart';
part '../user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) required int createdAt,
    @Default('') required String firstName,
    @Default('') required String id,
    @Default('') required String imageUrl,
    @Default('') required String lastName,
    @Default('') required String lastSeen,
    @Default('') required Map<String, dynamic> metadata,
    @Default('') required Role role,
    @Default(0) required int updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
