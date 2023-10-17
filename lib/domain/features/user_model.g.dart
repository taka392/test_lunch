// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      createdAt: json['createdAt'] as int? ?? 0,
      firstName: json['firstName'] as String? ?? '',
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      lastSeen: json['lastSeen'] as String? ?? '',
      metadata: json['metadata'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.admin,
      updatedAt: json['updatedAt'] as int? ?? 0,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'firstName': instance.firstName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'lastName': instance.lastName,
      'lastSeen': instance.lastSeen,
      'metadata': instance.metadata,
      'role': _$RoleEnumMap[instance.role],
      'updatedAt': instance.updatedAt,
    };

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.agent: 'agent',
  Role.moderator: 'moderator',
  Role.user: 'user',
};
