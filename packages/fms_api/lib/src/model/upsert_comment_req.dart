import 'package:freezed_annotation/freezed_annotation.dart';

part 'upsert_comment_req.freezed.dart';
part 'upsert_comment_req.g.dart';

@freezed
class UpsertCommentRequest with _$UpsertCommentRequest {
  const factory UpsertCommentRequest({
    required int id,
    required int feedbackId,
    required int parentCommentId,
    required String text,
    required bool isAnonym,
  }) = _UpsertCommentRequest;

  factory UpsertCommentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertCommentRequestFromJson(json);
}
