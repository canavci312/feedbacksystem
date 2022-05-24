import 'package:fms_api/src/model/customer_statistics_response/city_distribution.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_age_interval.dart';
import 'education_distribution.dart';
import 'user_age_interval.dart';

part 'customer_statistics.freezed.dart';
part 'customer_statistics.g.dart';

@freezed
class CustomerStatistics with _$CustomerStatistics {
  factory CustomerStatistics({
    double? meanUserAge,
    List<UserAgeInterval>? userAgeInterval,
    double? meanAccountAge,
    List<AccountAgeInterval>? accountAgeInterval,
    List<EducationDistribution>? educationDistribution,
    List<CityDistribution>? cityDistribution,
  }) = _CustomerStatistics;

  factory CustomerStatistics.fromJson(Map<String, dynamic> json) =>
      _$CustomerStatisticsFromJson(json);
}
