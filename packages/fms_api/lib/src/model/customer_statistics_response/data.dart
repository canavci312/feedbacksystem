import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_statistics.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? totalFeedbackCount,
    int? userCountPostedFeedback,
    CustomerStatistics? customerStatistics,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
