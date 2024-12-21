///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsCommonEn common = TranslationsCommonEn._(_root);
	late final TranslationsAuthEn auth = TranslationsAuthEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get app_name => 'BrainRot Uygulaması';
	String get ok => 'Tamam';
	String get cancel => 'İptal';
	String get error => 'Hata';
	String get success => 'Başarılı';
}

// Path: auth
class TranslationsAuthEn {
	TranslationsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get login => 'Giriş Yap';
	String get register => 'Kayıt Ol';
	String get email => 'E-posta';
	String get password => 'Şifre';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get upload_pdf => 'PDF Yükle';
	String get generate => 'Video Oluştur';
	String get settings => 'Ayarlar';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get language => 'Dil';
	String get theme => 'Tema';
	String get notifications => 'Bildirimler';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.app_name': return 'BrainRot Uygulaması';
			case 'common.ok': return 'Tamam';
			case 'common.cancel': return 'İptal';
			case 'common.error': return 'Hata';
			case 'common.success': return 'Başarılı';
			case 'auth.login': return 'Giriş Yap';
			case 'auth.register': return 'Kayıt Ol';
			case 'auth.email': return 'E-posta';
			case 'auth.password': return 'Şifre';
			case 'home.upload_pdf': return 'PDF Yükle';
			case 'home.generate': return 'Video Oluştur';
			case 'home.settings': return 'Ayarlar';
			case 'settings.language': return 'Dil';
			case 'settings.theme': return 'Tema';
			case 'settings.notifications': return 'Bildirimler';
			default: return null;
		}
	}
}

