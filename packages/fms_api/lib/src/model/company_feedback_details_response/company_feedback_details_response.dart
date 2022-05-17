import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'meta.dart';

part 'company_feedback_details_response.freezed.dart';
part 'company_feedback_details_response.g.dart';

@freezed
class CompanyFeedbackDetailsResponse with _$CompanyFeedbackDetailsResponse {
  factory CompanyFeedbackDetailsResponse({
    Meta? meta,
    Data? data,
  }) = _CompanyFeedbackDetailsResponse;

  factory CompanyFeedbackDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyFeedbackDetailsResponseFromJson(json);
}
