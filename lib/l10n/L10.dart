import 'package:flutter/material.dart';

class L10n{

  static final all = [
    const Locale('en'),
    const Locale('es'),
    const Locale('pt', 'BR')
  ];

  static getFlag(String languageCode) {
    switch (languageCode) {
      case 'pt':
        return '🇦🇪';
      case 'es':
        return '🇪🇸';
      case 'en':
      default:
        return '🇺🇸';
    }

  }

}