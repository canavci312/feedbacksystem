// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplyList _$$_ReplyListFromJson(Map<String, dynamic> json) => _$_ReplyList(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      text: json['text'] as String?,
      userName: json['userName'] as String?,
      userRoleId: json['userRoleId'] as int?,
      userRole: json['userRole'] as String?,
      companyName: json['companyName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ReplyListToJson(_$_ReplyList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'text': instance.text,
      'userName': instance.userName,
      'userRoleId': instance.userRoleId,
      'userRole': instance.userRole,
      'companyName': instance.companyName,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
