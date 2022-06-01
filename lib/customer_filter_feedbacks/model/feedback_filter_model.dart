import 'package:equatable/equatable.dart';

class FeedbackFilterModel extends Equatable {
  int? sectorId;
  int? companyId;
  int? feedbackType;
  int? feedbackStatus;
  int? productId;
  FeedbackFilterModel({
    this.sectorId,
    this.companyId,
    this.feedbackType,
    this.feedbackStatus,
    this.productId
  });

  @override
  List<Object?> get props {
    return [
      sectorId,
      companyId,
      feedbackType,
      feedbackStatus,
      productId,
    ];
  }
}
