import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wunderbuy/utils/constants/image_strings.dart';
import 'package:wunderbuy/utils/constants/sizes.dart';
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
              Padding(
                padding: const EdgeInsets.all(CSizes.defaultSpace),
                child: Column(
                  children: [
                    Lottie.asset(
                     CImages.lottieSearching,
                     width: CHelperFunctions.sceenWidth() * 0.8,
                     height: CHelperFunctions.screenHeight() * 0.7,
                    ),
                    Text(
                      CTextStrings.onBoardingTitle_1,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: CSizes.spaceBtwItemsSmall,
                    ),
                    Text(
                      CTextStrings.onBoardingSubTitle_1,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
