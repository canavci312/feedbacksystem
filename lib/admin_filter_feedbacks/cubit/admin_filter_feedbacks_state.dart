part of 'admin_filter_feedbacks_cubit.dart';

@freezed
class AdminFilterFeedbacksState with _$AdminFilterFeedbacksState {
  const factory AdminFilterFeedbacksState.initial(
      {bool? isLoading,
      GetSectorResponse? sectors,
      int? selectedSector,
      CompanyList? companies,
      int? selectedCompany,
      bool? isChecked,
      bool? isArchieved,
      bool? isDirected,
      int? selectedFeedbackType,
      int? selectedFeedbackSituation,
      CompanyList? products,
      int? selectedProduct}) = _Initial;
}
