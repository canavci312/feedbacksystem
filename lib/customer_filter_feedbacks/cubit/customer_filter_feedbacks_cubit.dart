import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lookup_repository/lookup_repository.dart';

part 'customer_filter_feedbacks_state.dart';
part 'customer_filter_feedbacks_cubit.freezed.dart';

class CustomerFilterFeedbacksCubit
    extends HydratedCubit<CustomerFilterFeedbacksState> {
  LookUpRepository _lookUpRepository;
  CustomerFilterFeedbacksCubit(this._lookUpRepository)
      : super(CustomerFilterFeedbacksState.initial());
  fetchSectors() async {
    emit(state.copyWith(isLoading: true));

    var fetchedSectors = await _lookUpRepository.getSectors();
    print(fetchedSectors);

    emit(state.copyWith(isLoading: false, sectors: fetchedSectors));
  }

  fetchCompanies() async {
    emit(state.copyWith(isLoading: true));

    var fetchedCompanies =
        await _lookUpRepository.getCompanies(sectorId: state.selectedSector);

    emit(state.copyWith(isLoading: false, companies: fetchedCompanies));
  }

  fetchProducts() async {
    emit(state.copyWith(isLoading: true));

    var fetchedProducts =
        await _lookUpRepository.getProducts(companyId: state.selectedCompany);

    emit(state.copyWith(isLoading: false, products: fetchedProducts));
  }

  selectSector(int? sectorId) async {
    emit(state.copyWith(
        selectedSector: sectorId, companies: null, selectedCompany: null));

    fetchCompanies();
  }

  void selectCompany(int? newValue) async {
    emit(state.copyWith(
        selectedCompany: newValue, products: null, selectedProduct: null));

    fetchProducts();
  }

  void selectProduct(int? newValue) {
    emit(state.copyWith(selectedProduct: newValue));
  }

  void selectFeedbackType(int? newValue) {
    emit(state.copyWith(selectedFeedbackType: newValue));
  }

  void selectFeedbackSituation(int? newValue) {
    emit(state.copyWith(selectedFeedbackSituation: newValue));
  }

  @override
  CustomerFilterFeedbacksState? fromJson(Map<String, dynamic> json) {
    return CustomerFilterFeedbacksState(
        isLoading: false,
        sectors: json['sectors'],
        selectedSector: json['selectedSector'],
        companies: json['companies'],
        selectedCompany: json['selectedCompany'],
        selectedFeedbackType: json['selectedFeedbackType'],
        selectedFeedbackSituation: json['selectedFeedbackSituation'],
        products: json['products'],
        selectedProduct: json['selectedProduct']);
  }

  @override
  Map<String, dynamic>? toJson(CustomerFilterFeedbacksState state) {
    return <String, dynamic>{
      'sectors': state.sectors,
      'selectedSector': state.selectedSector,
      'companies': state.companies,
      'selectedCompany': state.selectedCompany,
      'selectedFeedbackType': state.selectedFeedbackType,
      'selectedFeedbackSituation': state.selectedFeedbackSituation,
      'products': state.products,
      'selectedProduct': state.selectedProduct
    };
  }
}
