import 'package:fms_api/fms_api.dart';

/// {@template feedback_repository}
/// Feedback repository
/// {@endtemplate}
class FeedbackRepository {
  FeedbackRepository(this._fmsApi);
  final FmsApi _fmsApi;
  Future<List<PublicFeedbackList>?> getPublicFeedbackList(
      FeedbackGetListRequest request) async {
    final response = await _fmsApi.getFeedbackList(request);
    if (response != null) {
      return response.data?.publicFeedbackList;
    }
  }

  Future<List<CompanyFeedbackList>?> getCompanyFeedbackList(
      FeedbackGetListRequest request) async {
    final response = await _fmsApi.getFeedbackList(request);
    if (response != null) {
      return response.data?.companyFeedbackList;
    }
  }

  Future<List<AdminFeedbackList>?> getAdminFeedbackList(
      FeedbackGetListRequest request) async {
    final response = await _fmsApi.getFeedbackList(request);
    if (response != null) {
      return response.data?.adminFeedbackList;
    }
  }

  Future<void> upsertReply(int id, int feedbackId, String text) async {
    await _fmsApi.upsertReply(id, feedbackId, text);
  }

  Future<FeedbackDetailResponse?> getFeedbackDetail(int id) async {
    final response = await _fmsApi.getFeedbackDetail(id);
    if (response != null) {
      return response;
    }
  }

  Future<void> upsertFeedback(int typeId, String title, String text,
      int productId, bool isAnonym) async {
    final response = await _fmsApi.upsertFeedback(UpsertFeedbackRequest(
        typeId: typeId,
        title: title,
        text: text,
        productId: productId,
        isAnonym: isAnonym));
  }

  Future<void> sendComment(int feedbackId, String comment) async {
    final response = await _fmsApi.upsertComment(UpsertCommentRequest(
        feedbackId: feedbackId, text: comment, isAnonym: false));
  }

  Future<void> toggleSolved(int feedbackId) async {
    final response = await _fmsApi.toggleFeedbackSolved(feedbackId);
  }
  Future<void> toggleFeedbackChecked(int feedbackId) async {
    final response = await _fmsApi.toggleFeedbackChecked(feedbackId);
  }
  Future<CompanyFeedbackDetailsResponse?> getCompanyFeedbackDetail(
      int feedbackId) async {
    final response = await _fmsApi.getCompanyFeedbackDetail(feedbackId);
    if (response != null) {
      return response;
    }
  }

  Future<void> directFeedback(int feedbackId, int employeeId) async {
    await _fmsApi.directFeedback(feedbackId, employeeId);
  }

  Future<AdminFeedbackDetailsResponse?> getAdminFeedbackDetail(
      int feedbackId) async {
    final response = await _fmsApi.getAdminFeedbackDetail(feedbackId);
    if (response != null) {
      return response;
    }
  }
}
