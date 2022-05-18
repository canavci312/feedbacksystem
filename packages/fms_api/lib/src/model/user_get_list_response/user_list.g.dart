// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserList _$$_UserListFromJson(Map<String, dynamic> json) => _$_UserList(
      id: json['id'] as int?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      registeredAt: json['registeredAt'] == null
          ? null
          : DateTime.parse(json['registeredAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
      lastFailedLoginAt: json['lastFailedLoginAt'] == null
          ? null
          : DateTime.parse(json['lastFailedLoginAt'] as String),
      failedLoginAttemptCount: json['failedLoginAttemptCount'] as int?,
      cityName: json['cityName'] as String?,
      educationName: json['educationName'] as String?,
      roleName: json['roleName'] as String?,
      companyName: json['companyName'] as String?,
      isActive: json['isActive'] as bool?,
      isTwoFactorAuth: json['isTwoFactorAuth'] as bool?,
    );

Map<String, dynamic> _$$_UserListToJson(_$_UserList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthDate': instance.birthDate?.toIso8601String(),
      'registeredAt': instance.registeredAt?.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'lastFailedLoginAt': instance.lastFailedLoginAt?.toIso8601String(),
      'failedLoginAttemptCount': instance.failedLoginAttemptCount,
      'cityName': instance.cityName,
      'educationName': instance.educationName,
      'roleName': instance.roleName,
      'companyName': instance.companyName,
      'isActive': instance.isActive,
      'isTwoFactorAuth': instance.isTwoFactorAuth,
    };
