import 'package:flutter/cupertino.dart';

class LanguageProvider with ChangeNotifier{
  Locale _currentLocale = const Locale("pl");

  Locale get currentLocale{
    return _currentLocale;
  }

  set currentLocale(Locale locale){
    _currentLocale = locale;
    notifyListeners();
  }
}