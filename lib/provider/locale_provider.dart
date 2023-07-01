import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/l10n/L10.dart';

class LocaleProvider extends ChangeNotifier {
  late Locale _locale;

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    //_locale = null;
    notifyListeners();
  }
}
