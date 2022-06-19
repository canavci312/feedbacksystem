import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lookup_repository/lookup_repository.dart';

part 'company_filter_feedbacks_state.dart';
part 'company_filter_feedbacks_cubit.freezed.dart';

class CompanyFilterFeedbacksCubit
    extends HydratedCubit<CompanyFilterFeedbacksState> {
  LookUpRepository _lookUpRepository;
  AuthRepository _authRepository;
  CompanyFilterFeedbacksCubit(this._lookUpRepository, this._authRepository)
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
    var curUser = await _authRepository.currentUser();
    var fetchedProducts =
        await _lookUpRepository.getProducts(companyId: curUser?.companyId);
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

  @override
  CompanyFilterFeedbacksState? fromJson(Map<String, dynamic> json) {
    return CompanyFilterFeedbacksState.initial(
        isLoading: false,
        isArchieved: json['isArchieved'],
        isDirected: json['isDirected'],
        selectedFeedbackType: json['selectedFeedbackType'],
        selectedFeedbackSituation: json['selectedFeedbackSituation'],
        products: json['products'],
        selectedProduct: json['selectedProduct']);
  }

  @override
  Map<String, dynamic>? toJson(CompanyFilterFeedbacksState state) {
    return <String, dynamic>{
      'isArchieved': state.isArchieved,
      'isDirected': state.isDirected,
      'selectedFeedbackType': state.selectedFeedbackType,
      'selectedFeedbackSituation': state.selectedFeedbackSituation,
      'products': state.products,
      'selectedProduct': state.selectedProduct
    };
  }
}
