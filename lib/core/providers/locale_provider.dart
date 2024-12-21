import 'package:brainrotapp/core/localization/translations/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_provider.g.dart';

/// Locale provider
@riverpod
class Language extends _$Language {
  /// Secure storage for locale
  final _storage = const FlutterSecureStorage();

  /// Key for locale
  static const _key = 'locale';

  @override
  Future<Locale> build() async {
    // Load saved locale or return default
    final savedLocale = await _storage.read(key: _key);

    // Set initial locale and initialize translations
    final locale = savedLocale ?? 'en';
    await LocaleSettings.setLocale(
      AppLocale.values.firstWhere(
        (l) => l.languageCode == locale,
        orElse: () => AppLocale.en,
      ),
    );

    return Locale(locale);
  }

  /// Change the locale and save it to the storage
  Future<void> changeLocale(String languageCode) async {
    // Validate locale
    final isValidLocale = AppLocale.values.any(
      (l) => l.languageCode == languageCode,
    );
    if (!isValidLocale) return;

    // Update Slang locale
    await LocaleSettings.setLocale(
      AppLocale.values.firstWhere(
        (l) => l.languageCode == languageCode,
      ),
    );

    // Save preference
    await _storage.write(key: _key, value: languageCode);

    // Update state
    state = AsyncValue.data(Locale(languageCode));
  }
}
