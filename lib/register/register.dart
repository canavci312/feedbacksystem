import 'package:country_code_picker/country_code_picker.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/login/login_page.dart';
import 'package:feedbacksystem/register/cubit/register_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:intl/intl.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(getIt<FmsApi>()),
      child: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  DateTime? selectedDate;
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<DateTime?> showDatePicker() async {
      return showCupertinoModalPopup(
          context: context,
          builder: (BuildContext builder) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoButton(
                          child: const Text('İptal'),
                          onPressed: () => Navigator.of(context).pop()),
                      CupertinoButton(
                          child: const Text('Seç'),
                          onPressed: () =>
                              Navigator.of(context).pop(selectedDate)),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).copyWith().size.height * 0.25,
                  color: Colors.white,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (value) {
                      print(value);
                      if (value != null) selectedDate = value;
                    },
                    initialDateTime: DateTime.now(),
                    minimumYear: 1920,
                    maximumYear: DateTime.now().year,
                  ),
                ),
              ],
            );
          });
    }

    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.whenOrNull(
            success: () => showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Başarılı!'),
                    content: const Text('Başarıyla kayıt oldunuz'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        child: const Text('Ok'),
                        isDestructiveAction: false,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const LoginPage(),
                              ));
                        },
                      )
                    ],
                  ),
                ),
            error: () => showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Hata!'),
                    content: const Text('Birşeyler ters gitti :('),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        child: const Text('Ok'),
                        isDestructiveAction: false,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ));
      },
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: const Text('FSM \'e Hoşgeldiniz'),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Ad:'),
                        Expanded(
                          child: CupertinoTextField(
                            controller: nameController,
                            prefix: Icon(CupertinoIcons.person),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Soyad:'),
                        Expanded(
                          child: CupertinoTextField(
                            controller: lastNameController,
                            prefix: Icon(CupertinoIcons.person),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          var newDate = await showDatePicker();
                          if (newDate != null) {
                            setState(() {
                              selectedDate = newDate;
                            });
                          }
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: CupertinoDynamicColor.withBrightness(
                              color: CupertinoColors.white,
                              darkColor: CupertinoColors.black,
                            ),
                            border: const Border(
                                top: BorderSide(
                                  color: CupertinoDynamicColor.withBrightness(
                                    color: Color(0x33000000),
                                    darkColor: Color(0x33FFFFFF),
                                  ),
                                  width: 0.0,
                                ),
                                right: BorderSide(
                                  color: const CupertinoDynamicColor
                                      .withBrightness(
                                    color: Color(0x33000000),
                                    darkColor: Color(0x33FFFFFF),
                                  ),
                                  width: 0.0,
                                ),
                                bottom: BorderSide(
                                  color: CupertinoDynamicColor.withBrightness(
                                    color: const Color(0x33000000),
                                    darkColor: const Color(0x33FFFFFF),
                                  ),
                                  width: 0.0,
                                ),
                                left: BorderSide(
                                  color: CupertinoDynamicColor.withBrightness(
                                    color: Color(0x33000000),
                                    darkColor: Color(0x33FFFFFF),
                                  ),
                                  width: 0.0,
                                )),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Row(
                            children: [
                              const Icon(CupertinoIcons.calendar),
                              Text(selectedDate != null
                                  ? DateFormat.yMMMEd('tr')

                                      // displaying formatted date
                                      .format(selectedDate!.toLocal())
                                  : '')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoTextField(
                controller: emailController,
                prefix: const Icon(CupertinoIcons.mail),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoTextField(
                controller: passwordController,
                prefix: Icon(CupertinoIcons.lock),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  CountryCodePicker(
                    initialSelection: '+90',
                  ),
                  const Expanded(child: CupertinoTextField()),
                ],
              ),
            ),
            BlocBuilder<RegisterCubit, RegisterState>(
              builder: (context, state) {
                return CupertinoButton(
                    color: CupertinoTheme.of(context).primaryColor,
                    child: state.maybeWhen(
                        loading: () => CircularProgressIndicator(),
                        orElse: () => Text('Kayıt ol')),
                    onPressed: () {
                      context.read<RegisterCubit>().register(
                          emailController.text,
                          90,
                          phoneController.text,
                          passwordController.text,
                          nameController.text,
                          lastNameController.text,
                          selectedDate.toString());
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
