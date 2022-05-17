import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employeefeedback_state.dart';
part 'employeefeedback_cubit.freezed.dart';

class EmployeeFeedbackCubit extends Cubit<EmployeeFeedbackState> {
  final FeedbackRepository _feedbackRepository;
  List<CompanyFeedbackList>? feedbacks;
  List<CompanyFeedbackList> filteredList = [];

  EmployeeFeedbackCubit(this._feedbackRepository)
      : super(EmployeeFeedbackState.initial());
  getFeedbackList() async {
    emit(EmployeeFeedbackState.loading());

    feedbacks = await _feedbackRepository.getCompanyFeedbackList(
      FeedbackGetListRequest(),
    );
    if (feedbacks != null) {
      emit(EmployeeFeedbackState.success(feedbacks!, []));
    }
  }

  void searchFeedbacks(String value) {}

  void filterIsAnswered(bool bool) {
    if (bool) {
      filteredList.addAll(
          feedbacks!.where((element) => element.isReplied == true).toList());
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
      emit(EmployeeFeedbackState.success(feedbacks!, filteredList));
    } else {
      filteredList.addAll(
          feedbacks!.where((element) => element.isReplied == false).toList());
      var tempSet = filteredList.toSet();
      filteredList = tempSet.toList();
      emit(EmployeeFeedbackState.success(feedbacks!, filteredList));
    }
  }
}
