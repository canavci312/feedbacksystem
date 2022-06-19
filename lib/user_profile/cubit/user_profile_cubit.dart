import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'user_profile_state.dart';
part 'user_profile_cubit.freezed.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this._authRepository) : super(UserProfileState.initial());
  final AuthRepository _authRepository;
  getUserInfo() async {
    final user = await _authRepository.currentUser();
    emit(UserProfileState.success(user));
  }

  logout() async {
    await HydratedBlocOverrides.current?.storage.clear();
    await _authRepository.logout();
  }
}
