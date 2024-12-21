import 'package:brainrotapp/core/localization/translations/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// App Locale class
@immutable
class AppLocaleConstants {
  /// Supported Locales List
  static const supportedLocales = [
    Locale('en'), // English
    Locale('tr'), // Turkish
  ];

  /// Fallback locale
  static const fallbackLocale = Locale('en');

  /// Localizations delegates
  static List<LocalizationsDelegate<dynamic>> get localizationsDelegates => [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ];
}

/// Extension for easier access to translations
extension TranslationX on BuildContext {
  /// Get translations
  Translations get tr => TranslationProvider.of(this).translations;

  /// Get current locale
  AppLocale get currentLocale => TranslationProvider.of(this).locale;

  /// Check if current locale is RTL
  bool get isRtl => currentLocale.languageCode == 'ar' || currentLocale.languageCode == 'fa';
}
