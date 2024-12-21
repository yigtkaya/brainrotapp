import 'package:auto_route/auto_route.dart';
import 'package:brainrotapp/core/localization/app_locale.dart';
import 'package:flutter/material.dart';

/// Root view for the app
@RoutePage()
class RootView extends StatelessWidget {
  /// Constructor
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.tr.home.generate),
    );
  }
}
