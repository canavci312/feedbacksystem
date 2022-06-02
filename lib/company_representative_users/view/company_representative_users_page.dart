import 'package:feedbacksystem/company_representative_users/cubit/company_representative_users_cubit.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';

class CompanyRepresentativeUsersPage extends StatelessWidget {
  const CompanyRepresentativeUsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CompanyRepresentativeUsersCubit(getIt())..fetchUserList(),
      child: const CompanyRepresentativeUsersView(),
    );
  }
}

class CompanyRepresentativeUsersView extends StatelessWidget {
  const CompanyRepresentativeUsersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyRepresentativeUsersCubit,
        CompanyRepresentativeUsersState>(
      builder: (context, state) {
        return Material(
          child: CupertinoPageScaffold(
              navigationBar: const CupertinoNavigationBar(
                middle: Text('Çalışanlar'),
              ),
              child: state.when(
                  initial: () => const SizedBox(),
                  loading: () => const CircularProgressIndicator(),
                  succes: (list) {
                    return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                            onTap: (() {
                              showCupertinoDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      ActivationDialog(list[index])).then(
                                (value) {
                                  if (value != null) {
                                    context
                                        .read<CompanyRepresentativeUsersCubit>()
                                        .toggleUserAbility(value);
                                  }
                                },
                              );
                            }),
                            child: UserListTile(list[index]));
                      },
                    );
                  })),
        );
      },
    );
  }
}

class ActivationDialog extends StatelessWidget {
  final UserList user;
  ActivationDialog(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('Bilgilendirme'),
      content: user.isActive!
          ? Text(
              '${user.firstName} adlı kullanıcıyı deaktif ediyorsunuz. Onaylıyor musunuz?')
          : Text(
              '${user.firstName} adlı kullanıcıyı aktif ediyorsunuz. Onaylıyor musunuz?'),
      actions: [
        CupertinoDialogAction(
          child: const Text('Vazgeç'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CupertinoDialogAction(
          child: const Text('Evet'),
          onPressed: () {
            Navigator.pop(context, user.id);
          },
        )
      ],
    );
  }
}

class UserListTile extends StatelessWidget {
  final UserList user;

  const UserListTile(
    this.user, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.firstName! + ' ' + user.lastName!),
      subtitle: Row(
        children: [
          Text(user.roleName!),
          user.isActive!
              ? const Icon(
                  CupertinoIcons.checkmark_circle,
                  color: Colors.green,
                )
              : Icon(
                  CupertinoIcons.time,
                  color: Colors.yellow[800],
                )
        ],
      ),
    );
  }
}
