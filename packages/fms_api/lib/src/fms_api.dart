import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fms_api/fms_api.dart';
import 'package:fms_api/src/model/user_login_response/user_login_response.dart';
import 'package:fms_api/src/token_storage.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:logger/logger.dart';

/// {@template fms_api}
/// Services that app uses
/// {@endtemplate}
class FmsApi {
  /// {@macro fms_api}
  FmsApi({Dio? dioClient})
      : _dioClient = dioClient ?? Dio()
          ..interceptors.add(
            InterceptorsWrapper(
              onRequest: (RequestOptions options,
                  RequestInterceptorHandler handler) async {
                Logger().v(options.uri);
                Logger().d(options.headers);

                if (options.method == 'POST' || options.method == 'PATCH') {
                  dynamic data = options.data;
                  if (data is Map) {
                    Logger().d(data);
                  } else if (data is FormData) {
                    final map = <String, dynamic>{};
                    for (var file in data.files) {
                      map[file.key] =
                          '${file.value.filename} ${file.value.contentType}';
                    }
                    for (var field in data.fields) {
                      map[field.key] = field.value;
                    }
                    Logger().d(map);
                  }
                }

                return handler.next(options);
              },
              onResponse: (Response<dynamic> response,
                  ResponseInterceptorHandler handler) {
                Logger().v(
                    "(${response.statusCode}) - ${response.requestOptions.uri}");
                Logger().i(response.data);

                return handler.next(response);
              },
              onError: (DioError error, ErrorInterceptorHandler handler) {
                Logger().v(
                    "(${error.response?.statusCode}) - ${error.requestOptions.uri}");
                Logger().wtf(error.response?.toString());

                return handler.next(error);
              },
            ),
          )
          ..interceptors.add(_fresh);

  final storage = new FlutterSecureStorage();

  final Dio _dioClient;
  static const baseURL = 'http://fmsapi.uluoglakci.com';

  static final _fresh = Fresh<String>(
    refreshToken: (token, httpClient) async {
      return 'hhh';
    },
    tokenStorage: FmsTokenStorage(),
    tokenHeader: (token) {
      return {
        'Authorization': ' ${token}',
      };
    },
    shouldRefresh: (response) {
      return response?.statusCode == 401;
    },
  );
  Future<String?> login(String email, String password) async {
    try {
      print('hey');
      final response = await _dioClient.post<Map<String, dynamic>>(
        baseURL + '/Account/UserLogin',
        data: {'email': email, 'password': password},
      );
      final parsedResponse = UserLoginResponse.fromJson(response.data!);
      if (parsedResponse.meta?.successStatus != null) {
        if (parsedResponse.meta?.successStatus == true) {
          return parsedResponse.data!;
        } else {
          throw Exception();
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> registerUser(RegisterUserRequest registerUserRequest) async {
    try {
      final response = await _dioClient.post<Map<String, dynamic>>(
        baseURL + '/Account/RegisterUser',
        data: registerUserRequest.toJson(),
      );
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> verifyEmail() async {
    try {
      final response = await _dioClient.get<Map<String, dynamic>>(
        baseURL + '/Account/VerifyEmail',
      );
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<FeedbackList?> getFeedbackList(FeedbackGetListRequest request) async {
    try {
      final response = await _dioClient.post<Map<String, dynamic>>(
        baseURL + '/Feedback/GetList',
        data: request.toJson(),
      );
      if (response.data != null) {
        return FeedbackList.fromJson(response.data!);
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<FeedbackDetailResponse?> getFeedbackDetail(int id) async {
    try {
      final response = await _dioClient.get<Map<String, dynamic>>(
        baseURL + '/Feedback/GetDetail/$id',
      );
      if (response.data != null) {
        return FeedbackDetailResponse.fromJson(response.data!);
      }
    } catch (e) {}
  }

  Future<void> getCompanyFeedbackDetail(int id) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      baseURL + '/Feedback/GetCompanyFeedbackDetail/$id',
    );
  }

  Future<void> getAdminFeedbackDetail(int id) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      baseURL + '/Feedback/GetAdminFeedbackDetail/$id',
    );
  }

  Future<void> toggleFeedbackAbility(int id) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      baseURL + '/Feedback/ToggleFeedbackAbility/$id',
    );
  }

  Future<void> toggleFeedbackChecked(int id) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      baseURL + '/Feedback/ToggleFeedbackChecked/$id',
    );
  }

  Future<void> toggleFeedbackSolved(int id) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      baseURL + '/Feedback/ToggleFeedbackSolved/$id',
    );
  }

  Future<void> toggleFeedbackArchived(int id) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      baseURL + '/Feedback/ToggleFeedbackArchived/$id',
    );
  }

  Future<void> deleteFeedback(int id) async {
    final response = await _dioClient.delete<Map<String, dynamic>>(
      baseURL + '/Feedback/Delete/$id',
    );
  }

  Future<void> upsertFeedback(
      UpsertFeedbackRequest upsertFeedbackRequest) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      baseURL + '/Feedback/UpsertFeedback',
      data: upsertFeedbackRequest.toJson(),
    );
  }

  Future<void> directFeedback(int feedbackId, int employeeId) async {
    final response = await _dioClient.put<Map<String, dynamic>>(
      baseURL + '/Feedback/DirectFeedback',
      data: {"feedbackId": feedbackId, "employeeId": employeeId},
    );
  }

  Future<void> upsertComment(UpsertCommentRequest upsertCommentRequest) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      baseURL + '/Comment/UpsertComment',
      data: upsertCommentRequest.toJson(),
    );
  }

  Future<void> toggleCommentChecked(int id) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      baseURL + '/Comment/ToggleCommentChecked/$id',
    );
  }

  Future<void> toggleCommentAbility(int id) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      baseURL + '/Comment/ToggleCommentAbility/$id',
    );
  }

  Future<void> commentDelete(int id) async {
    final response = await _dioClient.delete<Map<String, dynamic>>(
      baseURL + '/Comment/Delete/$id',
    );
  }

  Future<void> reactFeedback(int feedbackId, bool sentiment) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      baseURL + '/Reaction/ReactFeedback',
      data: {"feedbackId": feedbackId, "sentiment": sentiment},
    );
  }

  Future<void> reactComment(int commentId, bool sentiment) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      baseURL + '/Reaction/ReactComment',
      data: {"commentId": commentId, "sentiment": sentiment},
    );
  }

  Future<void> deleteFeedbackReaction(int feedbackId) async {
    final response = await _dioClient.delete<Map<String, dynamic>>(
      baseURL + '/Reaction/DeleteFeedbackReaction',
      data: {"feedbackId": feedbackId},
    );
  }

  Future<void> deleteCommentReaction(int commentId) async {
    final response = await _dioClient.delete<Map<String, dynamic>>(
      baseURL + '/Reaction/DeleteCommentReaction',
      data: {"commentId": commentId},
    );
  }

  Future<CompanyList?> getCompanies(int? sectorId) async {
    Response<dynamic> response;
    if (sectorId == null) {
      response = await _dioClient.get<Map<String, dynamic>>(
        baseURL + '/Lookup/Company',
      );
    } else {
      response = await _dioClient.get<Map<String, dynamic>>(
        baseURL + '/Lookup/Company/$sectorId',
      );
    }

    return CompanyList.fromJson(response.data as Map<String, dynamic>);
  }

  Future<CompanyList?> getProducts(int? companyId) async {
    Response<dynamic> response;
    if (companyId == null) {
      response = await _dioClient.get<Map<String, dynamic>>(
        baseURL + '/Lookup/Product',
      );
    } else {
      response = await _dioClient.get<Map<String, dynamic>>(
          baseURL + '/Lookup/Product',
          queryParameters: <String, dynamic>{'companyId': companyId});
    }

    return CompanyList.fromJson(response.data as Map<String, dynamic>);
  }

 }
