import 'package:fms_api/fms_api.dart';

/// {@template reaction_repository}
/// Reaction repository
/// {@endtemplate}
class ReactionRepository {
  ReactionRepository(this._fmsApi);
  final FmsApi _fmsApi;
  Future<void> reactToFeedback(int feedbackId) async {
    _fmsApi.reactFeedback(feedbackId, true);
  }

  Future<void> reactToComment(int feedbackId)async {
    _fmsApi.reactComment(feedbackId, true);
  }

  Future<void> deleteFeedbackReaction(int feedbackId)async {
    _fmsApi.deleteFeedbackReaction(feedbackId);
  }

  Future<void> deleteCommentReaction(int feedbackId) async{
        _fmsApi.deleteCommentReaction(feedbackId);

  }
}
