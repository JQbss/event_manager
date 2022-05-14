import 'package:event_manager/exports/export.dart';
import 'package:event_manager/provider/language_provider.dart';
import 'package:event_manager/provider/theme_provider.dart';
import 'package:event_manager/view/loader/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MultiProvider(providers: [
        ChangeNotifierProvider<LanguageProvider>(create: (context) => LanguageProvider()),
        ChangeNotifierProvider<ThemeProvider>(create: (context) => ThemeProvider()),
      ],
      child: Builder(
        builder: (context){
          final languageProvider = Provider.of<LanguageProvider>(context);

          return MaterialApp(
            locale: languageProvider.currentLocale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            initialRoute: '/',
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
