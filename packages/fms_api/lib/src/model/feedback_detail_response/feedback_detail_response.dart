import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'meta.dart';

part 'feedback_detail_response.freezed.dart';
part 'feedback_detail_response.g.dart';

@freezed
class FeedbackDetailResponse with _$FeedbackDetailResponse {
  factory FeedbackDetailResponse({
    Meta? meta,
    Data? data,
  }) = _FeedbackDetailResponse;

  factory FeedbackDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDetailResponseFromJson(json);
}
