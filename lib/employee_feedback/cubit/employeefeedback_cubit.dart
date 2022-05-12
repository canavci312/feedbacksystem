import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employeefeedback_state.dart';
part 'employeefeedback_cubit.freezed.dart';

class EmployeeFeedbackCubit extends Cubit<EmployeeFeedbackState> {
  final FeedbackRepository _feedbackRepository;
  EmployeeFeedbackCubit(this._feedbackRepository)
      : super(EmployeeFeedbackState.initial());
  getFeedbackList() {
    _feedbackRepository.getCompanyFeedbackList(
      FeedbackGetListRequest(),
    );
  }

  void searchFeedbacks(String value) {}
}
