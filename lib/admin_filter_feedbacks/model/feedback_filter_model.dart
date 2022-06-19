import 'package:equatable/equatable.dart';

class AdminFeedbackFilterModel extends Equatable {
  int? sectorId;
  int? companyId;
  bool? isSolved;
  bool? isChecked;
  bool? isArchieved;
  bool? isDirected;
  int? feedbackType;
  int? feedbackStatus;
  int? productId;
  AdminFeedbackFilterModel({
    this.sectorId,
    this.companyId,
    this.isSolved,
    this.isChecked,
    this.isArchieved,
    this.isDirected,
    this.feedbackType,
    this.feedbackStatus,
    this.productId,
  });




  @override
  List<Object?> get props {
    return [
      sectorId,
      companyId,
      isSolved,
      isChecked,
      isArchieved,
      isDirected,
      feedbackType,
      feedbackStatus,
      productId,
    ];
  }
}
