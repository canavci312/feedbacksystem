import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_feedback_details/cubit/customer_feedback_details_cubit.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_feedback_details_state.dart';
part 'admin_feedback_details_cubit.freezed.dart';

class AdminFeedbackDetailsCubit extends Cubit<AdminFeedbackDetailsState> {
  final FeedbackRepository _feedbackRepository;
  final int feedbackId;
  AdminFeedbackDetailsCubit(this._feedbackRepository, this.feedbackId)
      : super(AdminFeedbackDetailsState.initial());
  fetchDetails() async {
    emit(AdminFeedbackDetailsState.loading());
    final response =
        await _feedbackRepository.getAdminFeedbackDetail(feedbackId);
    if (response != null) {
      emit(AdminFeedbackDetailsState.success(response, getStatus(response)));
    }
  }

  FeedbackStatus getStatus(AdminFeedbackDetailsResponse response) {
    if (response.data!.isSolved!) {
      return FeedbackStatus.solved;
    } else if (response.data!.isReplied!) {
      return FeedbackStatus.answered;
    } else {
      return FeedbackStatus.available;
    }
  }

  void toggleIsChecked() async {
    emit(AdminFeedbackDetailsState.loading());
    final response =
        await _feedbackRepository.toggleFeedbackChecked(feedbackId);
    await fetchDetails();
  }
}
