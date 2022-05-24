import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_age_interval.freezed.dart';
part 'account_age_interval.g.dart';

@freezed
class AccountAgeInterval with _$AccountAgeInterval {
  factory AccountAgeInterval({
    int? id,
    String? name,
    int? count,
  }) = _AccountAgeInterval;

  factory AccountAgeInterval.fromJson(Map<String, dynamic> json) =>
      _$AccountAgeIntervalFromJson(json);
}
