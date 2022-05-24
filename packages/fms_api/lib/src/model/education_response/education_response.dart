import 'package:freezed_annotation/freezed_annotation.dart';

import 'list.dart';

part 'education_response.freezed.dart';
part 'education_response.g.dart';

@freezed
class EducationResponse with _$EducationResponse {
  factory EducationResponse({
    List<MyList>? list,
    int? count,
  }) = _EducationResponse;

  factory EducationResponse.fromJson(Map<String, dynamic> json) =>
      _$EducationResponseFromJson(json);
}
