import 'package:auto_route/auto_route.dart';
import 'package:brainrotapp/core/constants/app_design_constant.dart';
import 'package:brainrotapp/core/extensions/build_context_extension.dart';
import 'package:brainrotapp/core/localization/app_locale.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VideoGenerationView extends StatelessWidget {
  const VideoGenerationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            AppDesignConstants.spacingMedium,
          ),
          child: Column(
            spacing: AppDesignConstants.spacingLarge,
            children: [
              const SizedBox(
                height: AppDesignConstants.spacingLarge,
              ),
              Text(
                context.tr.video_generation.title,
                style: context.textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
