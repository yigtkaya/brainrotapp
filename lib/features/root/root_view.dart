import 'package:auto_route/auto_route.dart';
import 'package:brainrotapp/core/localization/app_locale.dart';
import 'package:brainrotapp/core/router/app_router.dart';
import 'package:flutter/material.dart';

/// Root view for the app
@RoutePage()
class RootView extends StatelessWidget {
  /// Constructor
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        VideoGenerationRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.video_library),
              label: context.tr.home.generate,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: context.tr.settings.language,
            ),
          ],
        );
      },
    );
  }
}
