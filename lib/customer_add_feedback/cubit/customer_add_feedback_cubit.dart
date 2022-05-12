import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lookup_repository/lookup_repository.dart';

part 'customer_add_feedback_state.dart';
part 'customer_add_feedback_cubit.freezed.dart';

class CustomerAddFeedbackCubit extends Cubit<CustomerAddFeedbackState> {
  final LookUpRepository _lookUpRepository;
  final FeedbackRepository _feedbackRepository;
  List<dynamic>? companies;
  List<dynamic>? products;
  CustomerAddFeedbackCubit(this._lookUpRepository, this._feedbackRepository)
      : super(CustomerAddFeedbackState.initial(
            isLoading: false, showErrorDialog: false, isSuccessful: false));
  addFeedback() async {}
  getCompanyList() async {
    var response = await _lookUpRepository.getCompanies();
    companies = response!.list!;
  }

  getProductList(int companyId) async {
    var response = await _lookUpRepository.getProducts(companyId: companyId);
    products = response!.list!;
  }

  void postFeedback(
      String title, String text, int productId, bool isAnonym) async {
    print(title.trim().length);
    print(text.trim().length);
    if (title.trim().length < 3 || text.trim().length < 3 || productId == -1) {
      emit(
        state.copyWith(
            isLoading: false, showErrorDialog: true, isSuccessful: false),
      );
    } else {
      emit(
        state.copyWith(
            isLoading: true, showErrorDialog: false, isSuccessful: false),
      );
      try {
        await _feedbackRepository.upsertFeedback(
            title, text, productId, isAnonym);
        emit(
          state.copyWith(
              isLoading: false, showErrorDialog: false, isSuccessful: true),
        );
      } catch (e) {
        emit(
          state.copyWith(
              isLoading: false, showErrorDialog: true, isSuccessful: false),
        );
      }
    }
  }
}
