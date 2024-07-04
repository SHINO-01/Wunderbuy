import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wunderbuy/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:wunderbuy/utils/constants/colors.dart';
import 'package:wunderbuy/utils/constants/image_strings.dart';
import 'package:wunderbuy/utils/constants/sizes.dart';
import 'package:wunderbuy/utils/constants/text_strings.dart';
import 'package:wunderbuy/utils/device/device_utility.dart';
import 'package:wunderbuy/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable pages.
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                lottie: CImages.lottieSearching,
                title: CTextStrings.onBoardingTitle_1,
                subtitle: CTextStrings.onBoardingSubTitle_1,
              ),
              OnBoardingPage(
                lottie: CImages.lottieShopping,
                title: CTextStrings.onBoardingTitle_2,
                subtitle: CTextStrings.onBoardingSubTitle_2,
              ),
              OnBoardingPage(
                lottie: CImages.lottieDelivery,
                title: CTextStrings.onBoardingTitle_3,
                subtitle: CTextStrings.onBoardingSubTitle_3,
              ),
            ],
          ),

          //Buttons
          const ButtonWidget(),
          //smooth page indicator
          const NavigationDotWidget(),
          //circular bottan
          const NavigationNextButton()
        ],
      ),
    );
  }
}

class NavigationNextButton extends StatelessWidget {
  const NavigationNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Positioned(
        right: CSizes.defaultSpace,
        bottom: CDeviceUtils.getBottomNavBarHeight(),
        child: ElevatedButton(
            onPressed: ()=>OnboardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor:
                    dark ? CColors.primaryColor : CColors.darkMode),
            child: Icon(Iconsax.arrow_right_3,
                color: dark ? CColors.darkMode : CColors.primaryColor)));
  }
}

class NavigationDotWidget extends StatelessWidget {
  const NavigationDotWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = CHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: CDeviceUtils.getBottomNavBarHeight() + 25,
        left: CSizes.defaultSpace + 15,
        child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,      
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? CColors.primaryColor : CColors.darkMode,
              dotHeight: 6),
        ));
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: CDeviceUtils.getAppBarHeight(),
        right: CSizes.defaultSpace,
        child: TextButton(onPressed: ()=>OnboardingController.instance.lastPage(), child: const Text('Skip')));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.lottie,
    required this.title,
    required this.subtitle,
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
