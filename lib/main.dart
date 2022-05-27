import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/root_page/view/root_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  var storage = await FlutterSecureStorage();
  const company_manager =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjMxNiIsIm5hbWUiOiJHYWJiaWUiLCJlbWFpbCI6Imd5ZW9sYW5kOHJAd29yZHByZXNzLmNvbSIsIlJvbGVOYW1lIjoiQ29tcGFueSBNYW5hZ2VyIiwibmJmIjoxNjUyMDk0MDc0LCJleHAiOjE2ODIwOTQwNzQsImlhdCI6MTY1MjA5NDA3NH0.46Ycw4Y1HNtOTBBF32560Bohi57uRp5oRJ8DE2tbelQ';
  const admin =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjEiLCJuYW1lIjoiT3JhbGxhcyIsImVtYWlsIjoib2xhcnMwQHdhbG1hcnQuY29tIiwibmJmIjoxNjUwMDY2OTQ4LCJleHAiOjE2ODE2MDI5NDgsImlhdCI6MTY1MDA2Njk0OH0.uE9JfecoOIzZrHi59KCfBN5wLfSHQcVhqDkGBNryvyc';
  const employee =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjYxIiwibmFtZSI6IkJhcnJpZSIsImVtYWlsIjoiYm1jZ2x5bm4xb0BkZWxpY2lvdXMuY29tIiwiUm9sZU5hbWUiOiJDb21wYW55IEVtcGxveWVlIiwibmJmIjoxNjUwMjczOTAxLCJleHAiOjE2ODE4MDk5MDEsImlhdCI6MTY1MDI3MzkwMX0.UbTGzVvBywkUPscstSAN3C7lTvCigHfYKKgcmMMGWZk';
  const representative =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjUiLCJuYW1lIjoiUm9zZW1hcnkiLCJlbWFpbCI6InJtY2xld2Q0QGppYXRoaXMuY29tIiwiUm9sZU5hbWUiOiJDb21wYW55IFJlcHJlc2VudGF0aXZlIiwibmJmIjoxNjUwMTg5MDg2LCJleHAiOjE2ODE3MjUwODYsImlhdCI6MTY1MDE4OTA4Nn0.ZlTtOG_SZOf_9rmvmoQF8M9tuNOWtJfhLQufBEfxFj0';
  const customer_18 =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjE4IiwibmFtZSI6IkJvYmJ5IiwiZW1haWwiOiJicm9zZWJsYWRlaEBjYW5hbGJsb2cuY29tIiwiUm9sZU5hbWUiOiJDdXN0b21lciIsIm5iZiI6MTY1MDIwOTYxNywiZXhwIjoxNjgxNzQ1NjE3LCJpYXQiOjE2NTAyMDk2MTd9.LJYsnGkEdqXyRv_YS7N14JgXhOPnF54PhRs0v16yKeU';
  const customer_43 =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjQzIiwibmFtZSI6IkRpZXRlciIsImVtYWlsIjoiZGNyYWZ0MTZAc2luYS5jb20uY24iLCJSb2xlTmFtZSI6IkN1c3RvbWVyIiwibmJmIjoxNjUwMzc1NTgzLCJleHAiOjE2ODE5MTE1ODMsImlhdCI6MTY1MDM3NTU4M30.JwOruTsWyzDdNXy3MQI_P4d1OU_R7BneOuSNcHvBs7U';
  const customer_50 =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjUwIiwibmFtZSI6Ikxpc2UiLCJlbWFpbCI6ImxjYWxsZW4xZEB0dXR0b2NpdHRhLml0IiwiUm9sZU5hbWUiOiJDdXN0b21lciIsIm5iZiI6MTY1MDM3NTYzNiwiZXhwIjoxNjgxOTExNjM2LCJpYXQiOjE2NTAzNzU2MzZ9._XHs0Bvw2ruETQMdZAEp9eA8QojNzAp1F-jjKz88UZc';
  //await storage.write(key: 'token', value: employee);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Feedback App',
      home: RootPage(),
      theme: CupertinoThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
