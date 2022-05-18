// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserGetListResponse _$$_UserGetListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserGetListResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserGetListResponseToJson(
        _$_UserGetListResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
