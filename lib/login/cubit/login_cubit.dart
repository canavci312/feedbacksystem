import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  AuthRepository _authRepository;
  LoginCubit(this._authRepository)
      : super(LoginState.initial(null, LoginLoadStatus.idle));
  login(String email, String password) async {
    try {
      emit(LoginState.initial(null, LoginLoadStatus.loading));
      final result = await _authRepository.login(email, password);
      emit(LoginState.success());
    } catch (e) {
      print(e);
      emit(
          LoginState.initial(LoginErrorStatus.wrongPass, LoginLoadStatus.idle));
    }
  }
}
