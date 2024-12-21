import 'package:auto_route/auto_route.dart';
import 'package:brainrotapp/core/constants/app_design_constant.dart';
import 'package:brainrotapp/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VideoGenerationView extends StatelessWidget {
  const VideoGenerationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: AppDesignConstants.spacingLarge,
          children: [
            Text(
              "Rot your brain with PDFs",
              style: context.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
