import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/root_page/view/root_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final blocStorage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  await setup();
  var storage = await const FlutterSecureStorage();
  const company_manager =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6MjAsIm5hbWUiOiJHaW5nZXIiLCJlbWFpbCI6Imdsb3ZpZWpAdWNvei5jb20iLCJSb2xlTmFtZSI6IkNvbXBhbnkgTWFuYWdlciIsImNvbXBhbnlJZCI6MywibmJmIjoxNjU1NTU4NjE0LCJleHAiOjE2NjQxOTg2MTQsImlhdCI6MTY1NTU1ODYxNH0.2uXeaIjfHdp33qRySmCYagerE9Vx63RK2y2gFT5XlLk';
  const admin =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6MTQsIm5hbWUiOiJIZWRkaSIsImVtYWlsIjoiaHBldHRkQGJ1c2luZXNzaW5zaWRlci5jb20iLCJSb2xlTmFtZSI6IlN5c3RlbSBBZG1pbmlzdHJhdG9yIiwiY29tcGFueUlkIjo2LCJuYmYiOjE2NTU1NTg0NDksImV4cCI6MTY2NDE5ODQ0OSwiaWF0IjoxNjU1NTU4NDQ5fQ.2ydChf8r_HSMr8V_E3Gs3Z9eFIH7E8cMLDLXS8ol_40';
  const employee =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6MzE0LCJuYW1lIjoiVGhvbWEiLCJlbWFpbCI6InR3b29sbGhlYWQ4cEBpZmVuZy5jb20iLCJSb2xlTmFtZSI6IkNvbXBhbnkgRW1wbG95ZWUiLCJjb21wYW55SWQiOjMsIm5iZiI6MTY1NTU1ODg1NCwiZXhwIjoxNjY0MTk4ODU0LCJpYXQiOjE2NTU1NTg4NTR9.dUYKm-nDC2A7o7Sw2zY-Eazqae3c3mmnpMNtMsphCT4';
  const representative =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6MTA4LCJuYW1lIjoiU2VsZW5hIiwiZW1haWwiOiJzcHJvdWdodGVuMnpAdGVkLmNvbSIsIlJvbGVOYW1lIjoiQ29tcGFueSBSZXByZXNlbnRhdGl2ZSIsImNvbXBhbnlJZCI6MywibmJmIjoxNjU1NTU4Njg1LCJleHAiOjE2NjQxOTg2ODUsImlhdCI6MTY1NTU1ODY4NX0.mJ8t0ALgMDE3wvbFN4ijFexYQ6R56VD47l4AJWEML7A';
  const customer_18 =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6MTgsIm5hbWUiOiJCb2JieSIsImVtYWlsIjoiYnJvc2VibGFkZWhAY2FuYWxibG9nLmNvbSIsIlJvbGVOYW1lIjoiQ3VzdG9tZXIiLCJuYmYiOjE2NTU1NTg1MzEsImV4cCI6MTY2NDE5ODUzMSwiaWF0IjoxNjU1NTU4NTMxfQ.TgAv6dGOgZD3P7oiAAysTfAER2DW8Dpc0lNjhZWJtg4';
  await storage.write(key: 'token', value: representative);
  HydratedBlocOverrides.runZoned(() => runApp(MyApp()), storage: blocStorage);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Listener(
        onPointerUp: (_) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild?.unfocus();
          }
        },
        child: const CupertinoApp(
          title: 'Feedback App',
          home: RootPage(),
          theme: CupertinoThemeData(brightness: Brightness.light),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ));
  }
}
