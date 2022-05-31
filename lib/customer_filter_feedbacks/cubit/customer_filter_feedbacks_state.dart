part of 'customer_filter_feedbacks_cubit.dart';

@freezed
class CustomerFilterFeedbacksState with _$CustomerFilterFeedbacksState {
  const factory CustomerFilterFeedbacksState.initial({bool? isLoading,GetSectorResponse? sectors, int? selectedSector,CompanyList? companies, int? selectedCompany,int? selectedFeedbackType, int? selectedFeedbackSituation,CompanyList? products, int? selectedProduct}) = _Initial;
}
