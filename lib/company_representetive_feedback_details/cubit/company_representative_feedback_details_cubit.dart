import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../customer_feedback_details/cubit/customer_feedback_details_cubit.dart';

part 'company_representative_feedback_details_state.dart';
part 'company_representative_feedback_details_cubit.freezed.dart';

class CompanyRepresentativeFeedbackDetailsCubit
    extends Cubit<CompanyRepresentativeFeedbackDetailsState> {
  final FeedbackRepository _feedbackRepository;
  final AuthRepository _authRepository;
  final int feedbackId;
  CompanyRepresentativeFeedbackDetailsCubit(
      this._authRepository, this._feedbackRepository, this.feedbackId)
      : super(CompanyRepresentativeFeedbackDetailsState.initial());

  fetchDetails() async {
    emit(CompanyRepresentativeFeedbackDetailsState.loading());
    final response =
        await _feedbackRepository.getCompanyFeedbackDetail(feedbackId);
    if (response != null) {
      emit(CompanyRepresentativeFeedbackDetailsState.success(
          response, getStatus(response)));
    }
  }

  FeedbackStatus getStatus(CompanyFeedbackDetailsResponse response) {
    if (response.data!.isSolved!) {
      return FeedbackStatus.solved;
    } else if (response.data!.isReplied!) {
      return FeedbackStatus.answered;
    } else {
      return FeedbackStatus.available;
    }
  }

  Future<void> sendFeedback(String text) async {
    emit(CompanyRepresentativeFeedbackDetailsState.loading());
    var curUser = await _authRepository.currentUser();

    final response = await _feedbackRepository.upsertReply(
        int.parse(curUser!.id!), feedbackId, text);
    await fetchDetails();
  }
}
