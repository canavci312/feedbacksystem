import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lookup_repository/lookup_repository.dart';

part 'customer_filter_feedbacks_state.dart';
part 'customer_filter_feedbacks_cubit.freezed.dart';

class CustomerFilterFeedbacksCubit extends Cubit<CustomerFilterFeedbacksState> {
  LookUpRepository _lookUpRepository;
  CustomerFilterFeedbacksCubit(this._lookUpRepository)
      : super(CustomerFilterFeedbacksState.initial(
          isLoading: false,
        ));
  fetchSectors() async {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(isLoading: true));
      },
    );
    var fetchedSectors = await _lookUpRepository.getSectors();
    print(fetchedSectors);
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(isLoading: false, sectors: fetchedSectors));
      },
    );
  }

  fetchCompanies() async {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(isLoading: true));
      },
    );
    var fetchedCompanies =
        await _lookUpRepository.getCompanies(sectorId: state.selectedSector);
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(isLoading: false, companies: fetchedCompanies));
      },
    );
  }

  fetchProducts() async {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(isLoading: true));
      },
    );
    var fetchedProducts =
        await _lookUpRepository.getProducts(companyId: state.selectedCompany);
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(isLoading: false, products: fetchedProducts));
      },
    );
  }

  selectSector(int? sectorId) async {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(
            selectedSector: sectorId, companies: null, selectedCompany: null));
      },
    );
    fetchCompanies();
  }

  void selectCompany(int? newValue) async{
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(
            selectedCompany: newValue, products: null, selectedProduct: null));
      },
    );
    fetchProducts();
  }

  void selectProduct(int? newValue) {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(selectedProduct: newValue));
      },
    );
  }

  void selectFeedbackType(int? newValue) {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(selectedFeedbackType: newValue));
      },
    );
  }

  void selectFeedbackSituation(int? newValue) {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          selectedFeedbackType,
          selectedFeedbackSituation,
          product,
          selectedProduct) {
        emit(state.copyWith(selectedFeedbackSituation: newValue));
      },
    );
  }
}
