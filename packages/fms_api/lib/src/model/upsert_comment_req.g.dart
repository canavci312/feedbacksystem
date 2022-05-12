// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsert_comment_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpsertCommentRequest _$$_UpsertCommentRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpsertCommentRequest(
      id: json['id'] as int,
      feedbackId: json['feedbackId'] as int,
      parentCommentId: json['parentCommentId'] as int,
      text: json['text'] as String,
      isAnonym: json['isAnonym'] as bool,
    );

Map<String, dynamic> _$$_UpsertCommentRequestToJson(
        _$_UpsertCommentRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'feedbackId': instance.feedbackId,
      'parentCommentId': instance.parentCommentId,
      'text': instance.text,
      'isAnonym': instance.isAnonym,
    };
