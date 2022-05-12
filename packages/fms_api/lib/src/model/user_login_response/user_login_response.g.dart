// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLoginResponse _$$_UserLoginResponseFromJson(Map<String, dynamic> json) =>
    _$_UserLoginResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$_UserLoginResponseToJson(
        _$_UserLoginResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
