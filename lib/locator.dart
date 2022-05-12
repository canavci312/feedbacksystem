import 'package:auth_repository/auth_repository.dart';
import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/login/cubit/login_cubit.dart';
import 'package:fms_api/fms_api.dart';
import 'package:get_it/get_it.dart';
import 'package:lookup_repository/lookup_repository.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton<FmsApi>(() => (FmsApi()));
  getIt.registerLazySingleton<FeedbackRepository>(
      () => FeedbackRepository(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(getIt()));
  getIt
      .registerLazySingleton<LookUpRepository>(() => LookUpRepository(getIt()));
}
