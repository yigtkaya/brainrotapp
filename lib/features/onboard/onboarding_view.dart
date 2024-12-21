import 'package:auto_route/auto_route.dart';
import 'package:brainrotapp/core/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // play a video on the background on a loop
          SizedBox.expand(
            child: VideoPlayer(
              VideoPlayerController.asset(AssetVideos().onboarding),
            ),
          ),
        ],
      ),
    );
  }
}
