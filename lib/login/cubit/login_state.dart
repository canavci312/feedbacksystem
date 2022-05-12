part of 'login_cubit.dart';

enum LoginErrorStatus { wrongPass, noConnection }
enum LoginLoadStatus { loading, idle }

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial(
      LoginErrorStatus? errorStatus, LoginLoadStatus loadStatus) = _Initial;
  const factory LoginState.success() = _Success;
}
