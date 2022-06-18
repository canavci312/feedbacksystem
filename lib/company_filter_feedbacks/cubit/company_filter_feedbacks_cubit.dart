import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lookup_repository/lookup_repository.dart';

part 'company_filter_feedbacks_state.dart';
part 'company_filter_feedbacks_cubit.freezed.dart';

class CompanyFilterFeedbacksCubit extends Cubit<CompanyFilterFeedbacksState> {
  LookUpRepository _lookUpRepository;
  CompanyFilterFeedbacksCubit(this._lookUpRepository)
      : super(CompanyFilterFeedbacksState.initial(
          isLoading: false,
        ));

  fetchProducts() async {
    state.when(
      initial: (isLoading, isArchieved, isDirected, selectedFeedbackType,
          selectedFeedbackSituation, product, selectedProduct) {
        emit(state.copyWith(isLoading: true));
      },
    );
    var fetchedProducts = await _lookUpRepository.getProducts();
    state.when(
      initial: (isLoading, isArchieved, isDirected, selectedFeedbackType,
          selectedFeedbackSituation, product, selectedProduct) {
        emit(state.copyWith(isLoading: false, products: fetchedProducts));
      },
    );
  }

  void selectProduct(int? newValue) {
    state.when(
      initial: (isLoading, isArchieved, isDirected, selectedFeedbackType,
          selectedFeedbackSituation, product, selectedProduct) {
        emit(state.copyWith(selectedProduct: newValue));
      },
    );
  }

  void selectFeedbackType(int? newValue) {
    state.when(
      initial: (isLoading, isArchieved, isDirected, selectedFeedbackType,
          selectedFeedbackSituation, product, selectedProduct) {
        emit(state.copyWith(selectedFeedbackType: newValue));
      },
    );
  }

  void selectFeedbackSituation(int? newValue) {
    state.when(
      initial: (isLoading, isArchieved, isDirected, selectedFeedbackType,
          selectedFeedbackSituation, product, selectedProduct) {
        emit(state.copyWith(selectedFeedbackSituation: newValue));
      },
    );
  }

  void selectisDirected(bool? newValue) {
    state.when(
      initial: (isLoading, isArchieved, isDirected, selectedFeedbackType,
          selectedFeedbackSituation, product, selectedProduct) {
        emit(state.copyWith(isDirected: newValue));
      },
    );
  }

  void selectisArchieved(bool? newValue) {
    state.when(
      initial: (isLoading, isArchieved, isDirected, selectedFeedbackType,
          selectedFeedbackSituation, product, selectedProduct) {
        emit(state.copyWith(isArchieved: newValue));
      },
    );
  }
}
