// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sector_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetSectorResponse _$$_GetSectorResponseFromJson(Map<String, dynamic> json) =>
    _$_GetSectorResponse(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => MyList.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_GetSectorResponseToJson(
        _$_GetSectorResponse instance) =>
    <String, dynamic>{
      'list': instance.list,
      'count': instance.count,
    };
