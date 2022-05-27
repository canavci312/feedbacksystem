// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentList _$$_CommentListFromJson(Map<String, dynamic> json) =>
    _$_CommentList(
      childComment: json['childComment'] as List<dynamic>?,
      isActive: json['isActive'] as bool?,
      isChecked: json['isChecked'] as bool?,
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      userName: json['userName'] as String?,
      parentCommentId: json['parentCommentId'],
      text: json['text'] as String?,
      likeCount: json['likeCount'] as int?,
      dislikeCount: json['dislikeCount'] as int?,
      isAnonym: json['isAnonym'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_CommentListToJson(_$_CommentList instance) =>
    <String, dynamic>{
      'childComment': instance.childComment,
      'isActive': instance.isActive,
      'isChecked': instance.isChecked,
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'parentCommentId': instance.parentCommentId,
      'text': instance.text,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
      'isAnonym': instance.isAnonym,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
