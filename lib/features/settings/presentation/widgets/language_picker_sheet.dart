import 'package:brainrotapp/core/constants/app_colors.dart';
import 'package:brainrotapp/core/localization/translations/strings.g.dart';
import 'package:flutter/material.dart';

class LanguagePickerSheet extends StatelessWidget {
  const LanguagePickerSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LanguagePickerHeader(),
          Divider(),
          LanguageList(),
        ],
      ),
    );
  }
}

class LanguagePickerHeader extends StatelessWidget {
  const LanguagePickerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Text(
            'Select Language',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class LanguageList extends StatelessWidget {
  const LanguageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: AppLocale.values.map((locale) {
        final isSelected = locale == TranslationProvider.of(context).locale;
        return LanguageListItem(
          locale: locale,
          isSelected: isSelected,
        );
      }).toList(),
    );
  }
}

class LanguageListItem extends StatelessWidget {
  const LanguageListItem({
    required this.locale,
    required this.isSelected,
    super.key,
  });
  final AppLocale locale;
  final bool isSelected;

  String _getLanguageName() {
    switch (locale) {
      case AppLocale.en:
        return 'English';
      case AppLocale.tr:
        return 'Türkçe';
    }
  }

  String _getFlagEmoji() {
    switch (locale) {
      case AppLocale.en:
        return '🇬🇧';
      case AppLocale.tr:
        return '🇹🇷';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        _getFlagEmoji(),
        style: const TextStyle(fontSize: 24),
      ),
      title: Text(_getLanguageName()),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: AppColors.kPurple,
            )
          : null,
      onTap: () {
        LocaleSettings.setLocale(locale);
        Navigator.pop(context);
      },
    );
  }
}
