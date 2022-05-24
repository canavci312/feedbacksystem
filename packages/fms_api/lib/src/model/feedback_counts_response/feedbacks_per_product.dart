import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedbacks_per_product.freezed.dart';
part 'feedbacks_per_product.g.dart';

@freezed
class FeedbacksPerProduct with _$FeedbacksPerProduct {
  factory FeedbacksPerProduct({
    int? id,
    String? name,
    int? count,
  }) = _FeedbacksPerProduct;

  factory FeedbacksPerProduct.fromJson(Map<String, dynamic> json) =>
      _$FeedbacksPerProductFromJson(json);
}
