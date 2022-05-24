// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookup_roles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LookupRolesResponse _$$_LookupRolesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LookupRolesResponse(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => MyList.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_LookupRolesResponseToJson(
        _$_LookupRolesResponse instance) =>
    <String, dynamic>{
      'list': instance.list,
      'count': instance.count,
    };
