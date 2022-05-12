import 'package:freezed_annotation/freezed_annotation.dart';

import 'admin_feedback_list.dart';
import 'company_feedback_list.dart';
import 'public_feedback_list.dart';

part 'my_data.freezed.dart';
part 'my_data.g.dart';

@freezed
class MyData with _$MyData {
  factory MyData({
    int? totalCount,
    int? filteredCount,
    int? objectsPerPage,
    int? pageNumber,
    List<PublicFeedbackList>? publicFeedbackList,
    List<AdminFeedbackList>? adminFeedbackList,
    List<CompanyFeedbackList>? companyFeedbackList,
  }) = _MyData;

  factory MyData.fromJson(Map<String, dynamic> json) => _$MyDataFromJson(json);
}
