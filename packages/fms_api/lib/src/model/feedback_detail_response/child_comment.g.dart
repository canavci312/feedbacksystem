// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildComment _$$_ChildCommentFromJson(Map<String, dynamic> json) =>
    _$_ChildComment(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      userName: json['userName'] as String?,
      parentCommentId: json['parentCommentId'] as int?,
      text: json['text'] as String?,
      likeCount: json['likeCount'] as int?,
      dislikeCount: json['dislikeCount'] as int?,
      isAnonym: json['isAnonym'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      childComment: json['childComment'],
    );

Map<String, dynamic> _$$_ChildCommentToJson(_$_ChildComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'parentCommentId': instance.parentCommentId,
      'text': instance.text,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
      'isAnonym': instance.isAnonym,
      'createdAt': instance.createdAt?.toIso8601String(),
      'childComment': instance.childComment,
    };
