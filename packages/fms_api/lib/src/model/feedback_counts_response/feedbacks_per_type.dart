import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedbacks_per_type.freezed.dart';
part 'feedbacks_per_type.g.dart';

@freezed
class FeedbacksPerType with _$FeedbacksPerType {
  factory FeedbacksPerType({
    int? id,
    String? name,
    int? count,
  }) = _FeedbacksPerType;

  factory FeedbacksPerType.fromJson(Map<String, dynamic> json) =>
      _$FeedbacksPerTypeFromJson(json);
}
