part of 'company_filter_feedbacks_cubit.dart';

@freezed
class CompanyFilterFeedbacksState with _$CompanyFilterFeedbacksState {
  const factory CompanyFilterFeedbacksState.initial(
      {bool? isLoading,
      bool? isArchieved,
      bool? isDirected,
      int? selectedFeedbackType,
      int? selectedFeedbackSituation,
      CompanyList? products,
      int? selectedProduct}) = _Initial;
}
