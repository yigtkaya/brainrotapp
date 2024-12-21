import 'package:auto_route/auto_route.dart';
import 'package:brainrotapp/features/root/root_view.dart';
import 'package:brainrotapp/features/settings/presentation/settings_view.dart';
import 'package:brainrotapp/features/video_generation/presentation/video_generation_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

// Add this at the top of the file
final rootNavigatorKey = GlobalKey<NavigatorState>();

/// AppRouter is the main router of the app.
@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  /// Constructor
  AppRouter() : super(navigatorKey: rootNavigatorKey);

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: RootRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: VideoGenerationRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: SettingsRoute.page,
            ),
          ],
        ),
      ];
}
