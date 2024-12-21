///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsTr implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.tr,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <tr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsTr _root = this; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsCommonTr common = _TranslationsCommonTr._(_root);
  @override
  late final _TranslationsAuthTr auth = _TranslationsAuthTr._(_root);
  @override
  late final _TranslationsHomeTr home = _TranslationsHomeTr._(_root);
  @override
  late final _TranslationsSettingsTr settings = _TranslationsSettingsTr._(_root);
}

// Path: common
class _TranslationsCommonTr implements TranslationsCommonEn {
  _TranslationsCommonTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get app_name => 'BrainRot Uygulaması';
  @override
  String get ok => 'Tamam';
  @override
  String get cancel => 'İptal';
  @override
  String get error => 'Hata';
  @override
  String get success => 'Başarılı';
}

// Path: auth
class _TranslationsAuthTr implements TranslationsAuthEn {
  _TranslationsAuthTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get login => 'Giriş Yap';
  @override
  String get register => 'Kayıt Ol';
  @override
  String get email => 'E-posta';
  @override
  String get password => 'Şifre';
}

// Path: home
class _TranslationsHomeTr implements TranslationsHomeEn {
  _TranslationsHomeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get upload_pdf => 'PDF Yükle';
  @override
  String get generate => 'Video Oluştur';
  @override
  String get settings => 'Ayarlar';
}

// Path: settings
class _TranslationsSettingsTr implements TranslationsSettingsEn {
  _TranslationsSettingsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get language => 'Dil';
  @override
  String get theme => 'Tema';
  @override
  String get notifications => 'Bildirimler';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsTr {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.app_name':
        return 'BrainRot Uygulaması';
      case 'common.ok':
        return 'Tamam';
      case 'common.cancel':
        return 'İptal';
      case 'common.error':
        return 'Hata';
      case 'common.success':
        return 'Başarılı';
      case 'auth.login':
        return 'Giriş Yap';
      case 'auth.register':
        return 'Kayıt Ol';
      case 'auth.email':
        return 'E-posta';
      case 'auth.password':
        return 'Şifre';
      case 'home.upload_pdf':
        return 'PDF Yükle';
      case 'home.generate':
        return 'Video Oluştur';
      case 'home.settings':
        return 'Ayarlar';
      case 'settings.language':
        return 'Dil';
      case 'settings.theme':
        return 'Tema';
      case 'settings.notifications':
        return 'Bildirimler';
      default:
        return null;
    }
  }
}
