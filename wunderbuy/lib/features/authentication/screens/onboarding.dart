import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wunderbuy/utils/constants/image_strings.dart';
import 'package:wunderbuy/utils/constants/text_strings.dart';
import 'package:wunderbuy/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Lottie.asset(
                    CImages.lottieSearching,
                    width: CHelperFunctions.sceenWidth()*0.8,
                    height: CHelperFunctions.screenHeight()*0.6,
                  ),
                  Text(CTextStrings.onBoardingTitle_1, style: Theme.of(context).textTheme.headlineMedium,)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
