import 'package:auth_repository/auth_repository.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/login/login_page.dart';
import 'package:feedbacksystem/user_profile/cubit/user_profile_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserProfileCubit(getIt<AuthRepository>())..getUserInfo(),
      child: UserProfileView(),
    );
  }
}

class UserProfileView extends StatelessWidget {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Profilim'),
      ),
      child: BlocBuilder<UserProfileCubit, UserProfileState>(
        builder: (context, state) {
          return state.when(
              initial: () => SizedBox(),
              success: (user) {
                return user == null
                    ? Center(child: Text('offline'))
                    : SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Ad: ${user.name}'),
                            Text('Email: ${user.email}'),
                            Text('Rol: ${user.roleName}'),
                            CupertinoButton.filled(
                                child: Text('Çıkış yap'),
                                onPressed: () async {
                                  await context
                                      .read<UserProfileCubit>()
                                      .logout();
                                  Navigator.of(context, rootNavigator: true)
                                      .pushReplacement(CupertinoPageRoute(
                                          builder: ((context) => LoginPage())));
                                })
                          ],
                        ),
                      );
              });
        },
      ),
    );
  }
}
