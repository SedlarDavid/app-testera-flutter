import 'package:flutter/material.dart';
import 'package:flutter_control/control.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:testera/page_provider.dart';
import 'package:testera/pages/main_page.dart';
import 'package:testera/theme.dart';

import 'controls/control_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ControlRoot(
      debug: !kReleaseMode,
      localization: LocalinoConfig(
        locales: LocalinoAsset.map(
          locales: [
            'cs_CZ.json',
          ],
        ),
      ),
      initializers: {
        ...ControlProvider.initializers,
      },
      routes: [
        ...PageProvider.routes,
      ],
      theme: ThemeConfig<UITheme>(
        builder: (context) => UITheme(context as BuildContext),
        initTheme: ThemeConfig.platformBrightness,
        themes: {
          Brightness.light: (theme) => theme.lightTheme,
          Brightness.dark: (theme) => theme.darkTheme,
        },
      ),
      states: [
        AppState.main.build(
          (context) => MainPage(),
        ),
      ],
      app: (setup, home) => MaterialApp(
        debugShowCheckedModeBanner: false,
        key: setup.key,
        home: home,
        title: 'Testera',
        theme: setup.theme,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        ),
        locale: setup.locale,
        supportedLocales: setup.supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
      onSetupChanged: (setup) async {
        Intl.defaultLocale = setup.locale.toString();
      },
      initAsync: () => FutureBlock.wait([]),
    );
  }
}
