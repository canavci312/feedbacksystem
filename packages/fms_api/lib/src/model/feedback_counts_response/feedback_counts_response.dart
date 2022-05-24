import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'meta.dart';

part 'feedback_counts_response.freezed.dart';
part 'feedback_counts_response.g.dart';

@freezed
class FeedbackCountsResponse with _$FeedbackCountsResponse {
  factory FeedbackCountsResponse({
    Meta? meta,
    Data? data,
  }) = _FeedbackCountsResponse;

  factory FeedbackCountsResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackCountsResponseFromJson(json);
}
