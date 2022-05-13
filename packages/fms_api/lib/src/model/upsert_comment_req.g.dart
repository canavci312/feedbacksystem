// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsert_comment_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpsertCommentRequest _$$_UpsertCommentRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpsertCommentRequest(
      id: json['id'] as int?,
      feedbackId: json['feedbackId'] as int?,
      parentCommentId: json['parentCommentId'] as int?,
      text: json['text'] as String?,
      isAnonym: json['isAnonym'] as bool?,
    );

Map<String, dynamic> _$$_UpsertCommentRequestToJson(
    _$_UpsertCommentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('feedbackId', instance.feedbackId);
  writeNotNull('parentCommentId', instance.parentCommentId);
  writeNotNull('text', instance.text);
  writeNotNull('isAnonym', instance.isAnonym);
  return val;
}
