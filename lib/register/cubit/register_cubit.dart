import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final FmsApi _fmsApi;

  RegisterCubit(this._fmsApi) : super(RegisterState.initial());

  register(
      String email,
      int phoneCode,
      String phone,
      String password,
      String firstName,
      String lastName,
      String birthDate,
      int roleId,
      int companyId,
      int educationId,
      int cityId) async {
    try {
      emit(RegisterState.loading());
      await _fmsApi.registerUser(RegisterUserRequest(
          email: email,
          phoneCode: phoneCode,
          phone: phone,
          password: password,
          firstName: firstName,
          lastName: lastName,
          birthDate: birthDate,
          roleId: roleId,
          companyId: companyId,
          educationId: educationId,
          cityId: cityId));
      emit(RegisterState.success());
    } catch (e) {
      emit(RegisterState.error());
    }
  }
}
