part of 'customer_filter_feedbacks_cubit.dart';

@freezed
class CustomerFilterFeedbacksState with _$CustomerFilterFeedbacksState {
  factory CustomerFilterFeedbacksState(
      {bool? isLoading,
      GetSectorResponse? sectors,
      int? selectedSector,
      CompanyList? companies,
      int? selectedCompany,
      int? selectedFeedbackType,
      int? selectedFeedbackSituation,
      CompanyList? products,
      int? selectedProduct}) = _CustomerFilterFeedbacksState;
  factory CustomerFilterFeedbacksState.initial() =>
      CustomerFilterFeedbacksState(
        isLoading: false,
      );
}
