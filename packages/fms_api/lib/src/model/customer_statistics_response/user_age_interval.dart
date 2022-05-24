import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_age_interval.freezed.dart';
part 'user_age_interval.g.dart';

@freezed
class UserAgeInterval with _$UserAgeInterval {
  factory UserAgeInterval({
    int? id,
    String? name,
    int? count,
  }) = _UserAgeInterval;

  factory UserAgeInterval.fromJson(Map<String, dynamic> json) =>
      _$UserAgeIntervalFromJson(json);
}
