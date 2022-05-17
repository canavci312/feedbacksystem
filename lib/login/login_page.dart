import 'package:feedbacksystem/core/extensions.dart';
import 'package:feedbacksystem/customer_home/view/customer_home.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/login/cubit/login_cubit.dart';
import 'package:feedbacksystem/register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.when(
            initial: (errorStatus, loadStatus) {
              if (errorStatus == LoginErrorStatus.noConnection) {
                showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Login Error'),
                    content: const Text('You don\'t have internet connection'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        child: const Text('Ok'),
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              } else if (errorStatus == LoginErrorStatus.wrongPass) {
                showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Login Error'),
                    content: const Text('Wrong password'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        child: const Text('Ok'),
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              } else {}
            },
            success: () => Navigator.of(context).pushReplacement(
                CupertinoPageRoute(builder: (context) => CustomerHome())));
      },
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Welcome to CRM'),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoTextField(
                controller: _emailController,
                prefix: Icon(CupertinoIcons.mail),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoTextField(
                controller: _passwordController,
                prefix: Icon(CupertinoIcons.lock),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                return state.whenOrNull(
                      initial: (errorStatus, loadStatus) {
                        {
                          return CupertinoButton(
                              color: context.theme.primaryColor,
                              child: loadStatus == LoginLoadStatus.idle
                                  ? Text('Giriş')
                                  : CircularProgressIndicator.adaptive(),
                              onPressed: () {
                                if (loadStatus == LoginLoadStatus.idle) {
                                  context.read<LoginCubit>().login(
                                      _emailController.text,
                                      _passwordController.text);
                                }
                              });
                        }
                      },
                    ) ??
                    SizedBox();
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Üyeliğiniz yok mu? Hemen '),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
                    child: const Text('kayıt ol'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RegisterScreen()));
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
