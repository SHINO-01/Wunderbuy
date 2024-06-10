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
            children: const [
              OnBoardingPage(
                lottie: CImages.lottieSearching, 
                title: CTextStrings.onBoardingTitle_1, 
                subtitle: CTextStrings.onBoardingSubTitle_1,),
              OnBoardingPage(
                lottie: CImages.lottieShopping, 
                title: CTextStrings.onBoardingTitle_2, 
                subtitle: CTextStrings.onBoardingSubTitle_2,),
              OnBoardingPage(
                lottie: CImages.lottieDelivery, 
                title: CTextStrings.onBoardingTitle_3, 
                subtitle: CTextStrings.onBoardingSubTitle_3,),
            ],
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.lottie, required this.title, required this.subtitle,
  });

  final dynamic lottie;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
           lottie,
           width: CHelperFunctions.sceenWidth() * 0.8,
           height: CHelperFunctions.screenHeight() * 0.7,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: CSizes.spaceBtwItemsSmall,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
