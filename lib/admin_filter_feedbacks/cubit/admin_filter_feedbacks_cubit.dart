import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lookup_repository/lookup_repository.dart';

part 'admin_filter_feedbacks_state.dart';
part 'admin_filter_feedbacks_cubit.freezed.dart';

class AdminFilterFeedbacksCubit
    extends HydratedCubit<AdminFilterFeedbacksState> {
  LookUpRepository _lookUpRepository;
  AdminFilterFeedbacksCubit(this._lookUpRepository)
      : super(AdminFilterFeedbacksState.initial(
          isLoading: false,
        ));
  fetchSectors() async {
    state.when(
      initial: (isLoading,
              sectors,
              selectedSector,
              companies,
              selectedCompany,
              isChecked,
              isArchieved,
              isDirected,
              selectedFeedbackType,
              selectedFeedbackSituation,
              products,
              selectedProduct) =>
          {emit(state.copyWith(isLoading: true))},
    );
    var fetchedSectors = await _lookUpRepository.getSectors();
    print(fetchedSectors);
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
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
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
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
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
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
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
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
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
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
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
          selectedProduct) {
        emit(state.copyWith(
            selectedSector: sectorId, companies: null, selectedCompany: null));
      },
    );
    fetchCompanies();
  }

  void selectCompany(int? newValue) async {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
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
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
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
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
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
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
          selectedProduct) {
        emit(state.copyWith(selectedFeedbackSituation: newValue));
      },
    );
  }

  void selectisDirected(bool? newValue) {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
          selectedProduct) {
        emit(state.copyWith(isDirected: newValue));
      },
    );
  }

  void selectisArchieved(bool? newValue) {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
          selectedProduct) {
        emit(state.copyWith(isArchieved: newValue));
      },
    );
  }

  void selectIsChecked(bool? newValue) {
    state.when(
      initial: (isLoading,
          sectors,
          selectedSector,
          companies,
          selectedCompany,
          isChecked,
          isArchieved,
          isDirected,
          selectedFeedbackType,
          selectedFeedbackSituation,
          products,
          selectedProduct) {
        emit(state.copyWith(isChecked: newValue));
      },
    );
  }

  @override
  AdminFilterFeedbacksState? fromJson(Map<String, dynamic> json) {
    AdminFilterFeedbacksState.initial(
        isLoading: false,
        sectors: json['sectors'],
        isArchieved: json['isArchieved'],
        isChecked: json['isChecked'],
        isDirected: json['isDirected'],
        selectedSector: json['selectedSector'],
        companies: json['companies'],
        selectedCompany: json['selectedCompany'],
        selectedFeedbackType: json['selectedFeedbackType'],
        selectedFeedbackSituation: json['selectedFeedbackSituation'],
        products: json['products'],
        selectedProduct: json['selectedProduct']);
  }

  @override
  Map<String, dynamic>? toJson(AdminFilterFeedbacksState state) {
    return <String, dynamic>{
      'sectors': state.sectors,
      'isChecked': state.isChecked,
      'isArchieved': state.isArchieved,
      'isDirected': state.isDirected,
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
