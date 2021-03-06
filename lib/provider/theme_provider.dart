import 'package:flutter/cupertino.dart';

class ThemeProvider with ChangeNotifier{
  static Map<String, dynamic> _theme = CustomThemes.lightColors;

  Map<String,dynamic> get theme{
    return _theme;
  }

  set theme(Map<String,dynamic> newTheme){
    _theme = theme;
    notifyListeners();
  }

}

class CustomThemes{
  static Map<String,dynamic> lightColors = {
    "defaultButton": 0xFFAFE01F,
  };
}