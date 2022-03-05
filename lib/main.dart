import 'package:flutter/material.dart';
import 'package:notes_app/common/utils/hive_util.dart';
import 'package:notes_app/presentation/routing/routing.dart';

Future<void> main() async {
  initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      // locale:
      //     Provider.of<LocaleProvider>(context, listen: true).currentLocale,
      restorationScopeId: 'app',
      // localizationsDelegates: const [
      //   Localization.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // onGenerateTitle: (_) => local.appTitle,
      // supportedLocales: Localization.delegate.supportedLocales,
      // theme: Style.instance.appStyle,
    );
  }
}
