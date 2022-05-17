import 'package:freezed_annotation/freezed_annotation.dart';

part 'upsert_feedback_req.freezed.dart';
part 'upsert_feedback_req.g.dart';

@freezed
class UpsertFeedbackRequest with _$UpsertFeedbackRequest {
  @JsonSerializable(
    includeIfNull: false,
  )
  const factory UpsertFeedbackRequest({
    int? id,
    required String title,
    required String text,
    required int productId,
    int? typeId,
    int? subTypeId,
    required bool isAnonym,
  }) = _UpsertFeedbackRequest;

  factory UpsertFeedbackRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertFeedbackRequestFromJson(json);
}
