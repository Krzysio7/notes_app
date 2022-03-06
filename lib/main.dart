import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:notes_app/common/utils/hive_util.dart';
import 'package:notes_app/di/injection.dart';
import 'package:notes_app/presentation/core/localization/l10n.dart';
import 'package:notes_app/presentation/routing/routing.dart';

Future<void> main() async {
  configureInjection();
  initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      localizationsDelegates: const [
        Localization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Localization.delegate.supportedLocales,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
      ),
    );
  }
}
