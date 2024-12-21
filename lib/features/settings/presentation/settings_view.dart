import 'package:auto_route/auto_route.dart';
import 'package:brainrotapp/core/constants/app_colors.dart';
import 'package:brainrotapp/core/constants/app_design_constant.dart';
import 'package:brainrotapp/core/extensions/build_context_extension.dart';
import 'package:brainrotapp/core/localization/app_locale.dart';
import 'package:brainrotapp/core/theme/app_theme.dart';
import 'package:brainrotapp/core/theme/theme_provider.dart';
import 'package:brainrotapp/features/settings/presentation/widgets/language_picker_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.settings.language),
      ),
      body: ListView(
        children: const [
          _PremiumCard(),
          SizedBox(height: 16),
          _SettingsSection(),
          SizedBox(height: 16),
          AppInfoSection(),
        ],
      ),
    );
  }
}

final class _PremiumCard extends StatelessWidget {
  const _PremiumCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.kPurple,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(
                  AppDesignConstants.borderRadiusMedium,
                ),
              ),
            ),
            child: const Text(
              '🌟 Upgrade to Premium',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const PremiumFeaturesList(),
        ],
      ),
    );
  }
}

class PremiumFeaturesList extends StatelessWidget {
  const PremiumFeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const PremiumFeatureItem(text: '✨ Unlimited Video Generation'),
          const PremiumFeatureItem(text: '🎨 Access to Premium Templates'),
          const PremiumFeatureItem(text: '🎵 Premium Background Music'),
          const PremiumFeatureItem(text: '📊 Advanced Analytics'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // TODO: Implement subscription flow
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.kPurple,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text(
              'Subscribe Now',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class PremiumFeatureItem extends StatelessWidget {
  final String text;

  const PremiumFeatureItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

final class _SettingsSection extends StatelessWidget {
  const _SettingsSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Settings',
            style: context.textTheme.titleLarge,
          ),
        ),
        const SettingsLanguageTile(),
        const SettingsThemeTile(),
        const SettingsNotificationTile(),
      ],
    );
  }
}

class SettingsLanguageTile extends StatelessWidget {
  const SettingsLanguageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(context.tr.settings.language),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          builder: (context) => const LanguagePickerSheet(),
        );
      },
    );
  }
}

class SettingsThemeTile extends ConsumerWidget {
  const SettingsThemeTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return ListTile(
      leading: const Icon(Icons.dark_mode),
      title: Text(context.tr.settings.theme),
      subtitle: Text(
        theme.currentTheme == AppTheme.darkTheme ? 'Dark' : 'Light',
      ),
      trailing: Switch(
        value: theme.currentTheme == AppTheme.darkTheme,
        onChanged: (value) {
          ref.read(themeProvider.notifier).toggleTheme();
        },
      ),
    );
  }
}

class SettingsNotificationTile extends StatelessWidget {
  const SettingsNotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notifications),
      title: Text(context.tr.settings.notifications),
      trailing: Switch(
        value: true,
        onChanged: (value) {
          // TODO: Implement notifications toggle
        },
      ),
    );
  }
}

class AppInfoSection extends StatelessWidget {
  const AppInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'About',
            style: context.textTheme.titleLarge,
          ),
        ),
        const AppVersionTile(),
        const TermsOfServiceTile(),
        const PrivacyPolicyTile(),
      ],
    );
  }
}

class AppVersionTile extends StatelessWidget {
  const AppVersionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.info_outline),
      title: Text('Version'),
      trailing: Text('1.0.0'),
    );
  }
}

class TermsOfServiceTile extends StatelessWidget {
  const TermsOfServiceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.description_outlined),
      title: const Text('Terms of Service'),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // TODO: Implement terms of service
      },
    );
  }
}

class PrivacyPolicyTile extends StatelessWidget {
  const PrivacyPolicyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.privacy_tip_outlined),
      title: const Text('Privacy Policy'),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // TODO: Implement privacy policy
      },
    );
  }
}
