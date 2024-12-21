import 'package:auto_route/auto_route.dart';
import 'package:brainrotapp/features/root_view.dart';
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
        ),
      ];
}
