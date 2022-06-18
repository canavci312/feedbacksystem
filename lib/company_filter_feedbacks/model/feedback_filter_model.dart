import 'package:equatable/equatable.dart';

class CompanyFeedbackFilterModel extends Equatable {
  bool? isArchieved;
  bool? isDirected;
  int? feedbackType;
  int? feedbackStatus;
  int? productId;
  CompanyFeedbackFilterModel(
      {this.feedbackType,this.isArchieved,this.isDirected, this.feedbackStatus, this.productId});

  @override
  List<Object?> get props {
    return [
      feedbackType,
      feedbackStatus,
      productId,
    ];
  }
}
