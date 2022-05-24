import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'meta.dart';

part 'customer_statistics_response.freezed.dart';
part 'customer_statistics_response.g.dart';

@freezed
class CustomerStatisticsResponse with _$CustomerStatisticsResponse {
  factory CustomerStatisticsResponse({
    Meta? meta,
    Data? data,
  }) = _CustomerStatisticsResponse;

  factory CustomerStatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerStatisticsResponseFromJson(json);
}
