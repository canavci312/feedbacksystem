import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'meta.dart';

part 'admin_feedback_details_response.freezed.dart';
part 'admin_feedback_details_response.g.dart';

@freezed
class AdminFeedbackDetailsResponse with _$AdminFeedbackDetailsResponse {
  factory AdminFeedbackDetailsResponse({
    Meta? meta,
    Data? data,
  }) = _AdminFeedbackDetailsResponse;

  factory AdminFeedbackDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminFeedbackDetailsResponseFromJson(json);
}
