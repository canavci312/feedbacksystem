import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'company_representative_users_state.dart';
part 'company_representative_users_cubit.freezed.dart';

class CompanyRepresentativeUsersCubit
    extends Cubit<CompanyRepresentativeUsersState> {
  UserRepository _userRepository;
  CompanyRepresentativeUsersCubit(this._userRepository)
      : super(CompanyRepresentativeUsersState.initial());
  fetchUserList() async {
    emit(CompanyRepresentativeUsersState.loading());
    UserGetListResponse? response = await _userRepository.getUserList();
    if (response != null) {
      var users = response.data?.userList ?? [];
      var filteredUsers = users
          .where((element) =>
              element.roleName == 'Company Manager' ||
              element.roleName == 'Company REpresentative' ||
              element.roleName == 'Company Employee')
          .toList();
      emit(CompanyRepresentativeUsersState.succes(filteredUsers));
    }
  }

  toggleUserAbility(int userId) async {
    emit(CompanyRepresentativeUsersState.loading());
    await _userRepository.toggleUserAbility(userId);
    fetchUserList();
  }
}
