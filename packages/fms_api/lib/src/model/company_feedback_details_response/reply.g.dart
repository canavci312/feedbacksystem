// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reply _$$_ReplyFromJson(Map<String, dynamic> json) => _$_Reply(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      text: json['text'] as String?,
      userName: json['userName'] as String?,
      userRoleId: json['userRoleId'] as int?,
      userRole: json['userRole'] as String?,
      companyName: json['companyName'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_ReplyToJson(_$_Reply instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'text': instance.text,
      'userName': instance.userName,
      'userRoleId': instance.userRoleId,
      'userRole': instance.userRole,
      'companyName': instance.companyName,
      'createdAt': instance.createdAt,
    };
