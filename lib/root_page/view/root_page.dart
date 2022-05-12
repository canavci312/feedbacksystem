import 'package:auth_repository/auth_repository.dart';
import 'package:feedbacksystem/admin_home/admin_home.dart';
import 'package:feedbacksystem/customer_home/view/customer_home.dart';
import 'package:feedbacksystem/employee_home/view/employee_home.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/manager_home/view/manager_home_page.dart';
import 'package:feedbacksystem/root_page/cubit/root_page_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootPageCubit(getIt<AuthRepository>())..getRole(),
      child: RootView(),
    );
  }
}

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootPageCubit, RootPageState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            success: (role) {
              switch (role) {
                case Roles.admin:
                  return const AdminHome();
                case Roles.customer:
                  return const CustomerHome();
                case Roles.representative:
                  return const RepresentetiveHomePage();
                case Roles.employee:
                  return const EmployeeHome();
                default:
                  return const CustomerHome();
              }
            });
      },
    );
  }
}
