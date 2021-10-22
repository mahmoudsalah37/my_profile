import 'package:flutter/cupertino.dart';
import 'package:my_profile/provider/themePreference.dart';

class ThemeProvider extends ChangeNotifier {
  ThemePreference darkThemePref = ThemePreference();
  ScrollController scrollController = ScrollController();

  ScrollController get getScroll => scrollController;

  set scroll(int i) {
    scrollController.animateTo(
      i == 0 ? 100 : 0,
      // ignore: prefer_const_constructors
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  // App Theme
  bool _lightTheme = false;
  bool get lightTheme => _lightTheme;

  set lightTheme(bool value) {
    _lightTheme = value;
    darkThemePref.setDarkTheme(value);

    notifyListeners();
  }
}
