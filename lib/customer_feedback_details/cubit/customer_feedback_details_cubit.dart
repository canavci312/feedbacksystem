import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_feedback_details_state.dart';
part 'customer_feedback_details_cubit.freezed.dart';

enum FeedbackStatus { available, answered, solved }

class CustomerFeedbackDetailsCubit extends Cubit<CustomerFeedbackDetailsState> {
  FeedbackRepository _feedbackRepository;
  CustomerFeedbackDetailsCubit(this._feedbackRepository)
      : super(CustomerFeedbackDetailsState.initial());
  fetchDetails(int id) async {
    emit(CustomerFeedbackDetailsState.loading());
    final response = await _feedbackRepository.getFeedbackDetail(id);
    if (response != null) {
      emit(CustomerFeedbackDetailsState.success(response, getStatus(response)));
    }
  }

  FeedbackStatus getStatus(FeedbackDetailResponse response) {
    if (response.data!.isSolved!) {
      return FeedbackStatus.solved;
    } else if (response.data!.isReplied!) {
      return FeedbackStatus.answered;
    } else {
      return FeedbackStatus.available;
    }
  }
}
