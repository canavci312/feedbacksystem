// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerStatistics _$$_CustomerStatisticsFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerStatistics(
      meanUserAge: (json['meanUserAge'] as num?)?.toDouble(),
      userAgeInterval: (json['userAgeInterval'] as List<dynamic>?)
          ?.map((e) => UserAgeInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
      meanAccountAge: (json['meanAccountAge'] as num?)?.toDouble(),
      accountAgeInterval: (json['accountAgeInterval'] as List<dynamic>?)
          ?.map((e) => AccountAgeInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
      educationDistribution: (json['educationDistribution'] as List<dynamic>?)
          ?.map(
              (e) => EducationDistribution.fromJson(e as Map<String, dynamic>))
          .toList(),
      cityDistribution: (json['cityDistribution'] as List<dynamic>?)
          ?.map((e) => CityDistribution.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CustomerStatisticsToJson(
        _$_CustomerStatistics instance) =>
    <String, dynamic>{
      'meanUserAge': instance.meanUserAge,
      'userAgeInterval': instance.userAgeInterval,
      'meanAccountAge': instance.meanAccountAge,
      'accountAgeInterval': instance.accountAgeInterval,
      'educationDistribution': instance.educationDistribution,
      'cityDistribution': instance.cityDistribution,
    };
