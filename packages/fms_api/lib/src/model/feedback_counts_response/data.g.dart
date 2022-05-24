// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      totalFeedbackCount: json['totalFeedbackCount'] as int?,
      anonymFeedbackCount: json['anonymFeedbackCount'] as int?,
      directedFeedbackCount: json['directedFeedbackCount'] as int?,
      repliedFeedbackCount: json['repliedFeedbackCount'] as int?,
      solvedFeedbackCount: json['solvedFeedbackCount'] as int?,
      archivedFeedbackCount: json['archivedFeedbackCount'] as int?,
      totalSharedCount: json['totalSharedCount'] as int?,
      totalLikeCount: json['totalLikeCount'] as int?,
      totalDislikeCount: json['totalDislikeCount'] as int?,
      feedbacksPerProduct: (json['feedbacksPerProduct'] as List<dynamic>?)
          ?.map((e) => FeedbacksPerProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedbacksPerType: (json['feedbacksPerType'] as List<dynamic>?)
          ?.map((e) => FeedbacksPerType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'totalFeedbackCount': instance.totalFeedbackCount,
      'anonymFeedbackCount': instance.anonymFeedbackCount,
      'directedFeedbackCount': instance.directedFeedbackCount,
      'repliedFeedbackCount': instance.repliedFeedbackCount,
      'solvedFeedbackCount': instance.solvedFeedbackCount,
      'archivedFeedbackCount': instance.archivedFeedbackCount,
      'totalSharedCount': instance.totalSharedCount,
      'totalLikeCount': instance.totalLikeCount,
      'totalDislikeCount': instance.totalDislikeCount,
      'feedbacksPerProduct': instance.feedbacksPerProduct,
      'feedbacksPerType': instance.feedbacksPerType,
    };
