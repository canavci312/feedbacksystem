import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_page_state.dart';
part 'root_page_cubit.freezed.dart';

enum Roles { admin, customer, guest, representative, employee, manager }

class RootPageCubit extends Cubit<RootPageState> {
  final AuthRepository _authRepository;
  RootPageCubit(this._authRepository) : super(const RootPageState.initial());
  checkUser() async {
    final user = await _authRepository.currentUser();
    if (user == null) {
      emit(RootPageState.unauth());
    } else {
      if (user.exp != null) {
        if (DateTime.now().isAfter(DateTime.fromMillisecondsSinceEpoch(user.exp!*1000))) {
          emit(RootPageState.unauth());
        } else {
          getRole();
        }
      }
    }
  }

  getRole() async {
    final user = await _authRepository.currentUser();
    print(user?.roleName);
    switch (user?.roleName) {
      case 'System Administrator':
        print('admin');
        return emit(const RootPageState.success(Roles.admin));
      case 'Company Representative':
        print('representative');

        return emit(const RootPageState.success(Roles.representative));

      case 'Customer':
        print('customer');

        return emit(const RootPageState.success(Roles.customer));
      case 'Company Employee':
        print('employee');

        return emit(const RootPageState.success(Roles.employee));
      case 'Company Manager':
        print('manager');

        return emit(const RootPageState.success(Roles.manager));
      default:
        print('default');

        return emit(const RootPageState.success(Roles.customer));
    }
  }
}
