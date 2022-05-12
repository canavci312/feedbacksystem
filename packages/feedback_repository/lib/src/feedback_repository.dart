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
  Future<FeedbackDetailResponse?> getFeedbackDetail(int id) async {
    final response = await _fmsApi.getFeedbackDetail(id);
    if (response != null) {
      return response;
    }
  }

  Future<void> upsertFeedback(
      String title, String text, int productId, bool isAnonym) async {
    final response = await _fmsApi.upsertFeedback(UpsertFeedbackRequest(
        title: title, text: text, productId: productId, isAnonym: isAnonym));
  }
}
