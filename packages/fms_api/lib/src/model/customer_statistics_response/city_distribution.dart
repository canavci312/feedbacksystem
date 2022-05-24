import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_distribution.freezed.dart';
part 'city_distribution.g.dart';

@freezed
class CityDistribution with _$CityDistribution {
  factory CityDistribution({
    int? id,
    String? name,
    int? count,
  }) = _CityDistribution;

  factory CityDistribution.fromJson(Map<String, dynamic> json) =>
      _$CityDistributionFromJson(json);
}
