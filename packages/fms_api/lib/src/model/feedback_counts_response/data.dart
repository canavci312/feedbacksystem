import 'package:freezed_annotation/freezed_annotation.dart';

import 'feedbacks_per_product.dart';
import 'feedbacks_per_type.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? totalFeedbackCount,
    int? anonymFeedbackCount,
    int? directedFeedbackCount,
    int? repliedFeedbackCount,
    int? solvedFeedbackCount,
    int? archivedFeedbackCount,
    int? totalSharedCount,
    int? totalLikeCount,
    int? totalDislikeCount,
    List<FeedbacksPerProduct>? feedbacksPerProduct,
    List<FeedbacksPerType>? feedbacksPerType,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
