import 'package:freezed_annotation/freezed_annotation.dart';

part 'upsert_comment_req.freezed.dart';
part 'upsert_comment_req.g.dart';

@freezed
class UpsertCommentRequest with _$UpsertCommentRequest {
    @JsonSerializable(
    includeIfNull: false,
  )
  const factory UpsertCommentRequest({
     int? id,
     int? feedbackId,
     int? parentCommentId,
     String? text,
     bool? isAnonym,
  }) = _UpsertCommentRequest;

  factory UpsertCommentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertCommentRequestFromJson(json);
}
