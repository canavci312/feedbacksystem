import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_distribution.freezed.dart';
part 'education_distribution.g.dart';

@freezed
class EducationDistribution with _$EducationDistribution {
  factory EducationDistribution({
    int? id,
    String? name,
    int? count,
  }) = _EducationDistribution;

  factory EducationDistribution.fromJson(Map<String, dynamic> json) =>
      _$EducationDistributionFromJson(json);
}
