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
  int education = 1;
  int companyId = 0;
  int roleId = 2;
  int cityId = 6;
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<DateTime?> showDatePicker() async {
      return showCupertinoModalPopup(
          context: context,
          builder: (BuildContext builder) {
            return SingleChildScrollView(
              child: Column(
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
                    height:
                        MediaQuery.of(context).copyWith().size.height * 0.25,
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
              ),
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
            error: (message) => showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Hata!'),
                    content: message.isNotEmpty
                        ? Text(message)
                        : Text('Birşeyler ters gitti :('),
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                            border: Border(
                                top: BorderSide(
                                  color: CupertinoDynamicColor.withBrightness(
                                    color: Color(0x33000000),
                                    darkColor: Color(0x33FFFFFF),
                                  ),
                                  width: 0.0,
                                ),
                                right: BorderSide(
                                  color: CupertinoDynamicColor.withBrightness(
                                    color: Color(0x33000000),
                                    darkColor: Color(0x33FFFFFF),
                                  ),
                                  width: 0.0,
                                ),
                                bottom: BorderSide(
                                  color: CupertinoDynamicColor.withBrightness(
                                    color: Color(0x33000000),
                                    darkColor: Color(0x33FFFFFF),
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
                  Expanded(
                      child: CupertinoTextField(
                    controller: phoneController,
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                child: DropdownButton<int>(
                  value: cityId,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      cityId = newValue!;
                    });
                  },
                  items: <Map<String, dynamic>>[
                    {
                      "id": 1,
                      "cityName": "Adana",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 2,
                      "cityName": "Adıyaman",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 3,
                      "cityName": "Afyonkarahisar",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 4,
                      "cityName": "Ağrı",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 5,
                      "cityName": "Amasya",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 6,
                      "cityName": "Ankara",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 7,
                      "cityName": "Antalya",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 8,
                      "cityName": "Artvin",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 9,
                      "cityName": "Aydın",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 10,
                      "cityName": "Balıkesir",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 11,
                      "cityName": "Bilecik",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 12,
                      "cityName": "Bingöl",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 13,
                      "cityName": "Bitlis",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 14,
                      "cityName": "Bolu",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 15,
                      "cityName": "Burdur",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 16,
                      "cityName": "Bursa",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 17,
                      "cityName": "Çanakkale",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 18,
                      "cityName": "Çankırı",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 19,
                      "cityName": "Çorum",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 20,
                      "cityName": "Denizli",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 21,
                      "cityName": "Diyarbakır",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 22,
                      "cityName": "Edirne",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 23,
                      "cityName": "Elâzığ",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 24,
                      "cityName": "Erzincan",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 25,
                      "cityName": "Erzurum",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 26,
                      "cityName": "Eskişehir",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 27,
                      "cityName": "Gaziantep",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 28,
                      "cityName": "Giresun",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 29,
                      "cityName": "Gümüşhane",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 30,
                      "cityName": "Hakkâri",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 31,
                      "cityName": "Hatay",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 32,
                      "cityName": "Isparta",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 33,
                      "cityName": "Mersin",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 34,
                      "cityName": "İstanbul",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 35,
                      "cityName": "İzmir",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 36,
                      "cityName": "Kars",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 37,
                      "cityName": "Kastamonu",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 38,
                      "cityName": "Kayseri",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 39,
                      "cityName": "Kırklareli",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 40,
                      "cityName": "Kırşehir",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 41,
                      "cityName": "Kocaeli",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 42,
                      "cityName": "Konya",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 43,
                      "cityName": "Kütahya",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 44,
                      "cityName": "Malatya",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 45,
                      "cityName": "Manisa",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 46,
                      "cityName": "Kahramanmaraş",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 47,
                      "cityName": "Mardin",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 48,
                      "cityName": "Muğla",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 49,
                      "cityName": "Muş",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 50,
                      "cityName": "Nevşehir",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 51,
                      "cityName": "Niğde",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 52,
                      "cityName": "Ordu",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 53,
                      "cityName": "Rize",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 54,
                      "cityName": "Sakarya",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 55,
                      "cityName": "Samsun",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 56,
                      "cityName": "Siirt",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 57,
                      "cityName": "Sinop",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 58,
                      "cityName": "Sivas",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 59,
                      "cityName": "Tekirdağ",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 60,
                      "cityName": "Tokat",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 61,
                      "cityName": "Trabzon",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 62,
                      "cityName": "Tunceli",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 63,
                      "cityName": "Şanlıurfa",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 64,
                      "cityName": "Uşak",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 65,
                      "cityName": "Van",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 66,
                      "cityName": "Yozgat",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 67,
                      "cityName": "Zonguldak",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 68,
                      "cityName": "Aksaray",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 69,
                      "cityName": "Bayburt",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 70,
                      "cityName": "Karaman",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 71,
                      "cityName": "Kırıkkale",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 72,
                      "cityName": "Batman",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 73,
                      "cityName": "Şırnak",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 74,
                      "cityName": "Bartın",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 75,
                      "cityName": "Ardahan",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 76,
                      "cityName": "Iğdır",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 77,
                      "cityName": "Yalova",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 78,
                      "cityName": "Karabük",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 79,
                      "cityName": "Kilis",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 80,
                      "cityName": "Osmaniye",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    },
                    {
                      "id": 81,
                      "cityName": "Düzce",
                      "countryId": 218,
                      "countryName": "TURKEY"
                    }
                  ].map<DropdownMenuItem<int>>((Map<String, dynamic> value) {
                    return DropdownMenuItem<int>(
                      value: value['id'],
                      child: Text(value['cityName']),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                child: DropdownButton<int>(
                  value: roleId,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      roleId = newValue!;
                    });
                  },
                  items: <Map<String, dynamic>>[
                    {"id": 1, "name": "Admin"},
                    {"id": 2, "name": "Müşteri"},
                    {"id": 3, "name": "Şireket Yöneticisi"},
                    {"id": 4, "name": "Temsilci"},
                    {"id": 5, "name": "Çalışan"}
                  ].map<DropdownMenuItem<int>>((Map<String, dynamic> value) {
                    return DropdownMenuItem<int>(
                      value: value['id'],
                      child: Text(value['name']),
                    );
                  }).toList(),
                ),
              ),
            ),
            Visibility(
              visible: roleId != 2 && roleId != 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Material(
                  child: DropdownButton<int>(
                    value: companyId,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    underline: Container(
                      height: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                    onChanged: (int? newValue) {
                      setState(() {
                        companyId = newValue!;
                      });
                    },
                    items: <Map<String, dynamic>>[
                      {"id": 0, "name": "Şirket Seçiniz"},
                      {"id": 1, "name": "Kunze Inc"},
                      {"id": 2, "name": "Flatley-Schoen"},
                      {"id": 3, "name": "Stokes Group"},
                      {"id": 4, "name": "Schinner, Gibson and Kiehn"},
                      {"id": 5, "name": "Koelpin, Quitzon and Grady"},
                      {"id": 6, "name": "Cummings LLC"},
                      {"id": 7, "name": "Grant LLC"},
                      {"id": 8, "name": "Marks, Lebsack and Runte"},
                      {"id": 9, "name": "Altenwerth-Volkman"},
                      {"id": 10, "name": "Towne, Borer and Cummings"},
                      {"id": 11, "name": "Considine Group"},
                      {"id": 12, "name": "Considine-Dooley"},
                      {"id": 13, "name": "Schimmel, Zulauf and Hahn"},
                      {"id": 14, "name": "Bergstrom-Mohr"},
                      {"id": 15, "name": "Rice LLC"},
                      {"id": 16, "name": "Terry Inc"},
                      {"id": 17, "name": "Marvin, Purdy and McLaughlin"},
                      {"id": 18, "name": "Langosh, Bashirian and Lebsack"},
                      {"id": 19, "name": "O'Kon-D'Amore"},
                      {"id": 20, "name": "Rippin Group"}
                    ].map<DropdownMenuItem<int>>((Map<String, dynamic> value) {
                      return DropdownMenuItem<int>(
                        value: value['id'],
                        child: Text(value['name']),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                child: DropdownButton<int>(
                  value: education,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      education = newValue!;
                    });
                  },
                  items: <Map<String, dynamic>>[
                    {"id": 1, "name": "Diplomasız"},
                    {"id": 2, "name": "Lise mezunu"},
                    {"id": 3, "name": "Kolej mezunu"},
                    {"id": 4, "name": "Mesleki Eğitim"},
                    {"id": 5, "name": "Lisans"},
                    {"id": 6, "name": "Yüksek Lisans"},
                    {"id": 7, "name": "Profesyonel derece"},
                    {"id": 8, "name": "Doktora"}
                  ].map<DropdownMenuItem<int>>((Map<String, dynamic> value) {
                    return DropdownMenuItem<int>(
                      value: value['id'],
                      child: Text(value['name']),
                    );
                  }).toList(),
                ),
              ),
            ),
            Center(
              child: BlocBuilder<RegisterCubit, RegisterState>(
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
                            selectedDate!.toIso8601String(),
                            roleId,
                            companyId,
                            education,
                            cityId);
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
