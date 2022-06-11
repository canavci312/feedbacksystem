// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['Id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      roleName: json['RoleName'] as String?,
      companyId: json['companyId'] as int?,
      nbf: json['nbf'] as int?,
      exp: json['exp'] as int?,
      iat: json['iat'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'Id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'RoleName': instance.roleName,
      'companyId': instance.companyId,
      'nbf': instance.nbf,
      'exp': instance.exp,
      'iat': instance.iat,
    };
