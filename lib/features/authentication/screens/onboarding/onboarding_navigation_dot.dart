import 'package:e_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingNavigationDot extends StatelessWidget {
  const OnboardingNavigationDot({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBaeHeight()+25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(controller: controller.pageController ,
      onDotClicked: controller.dotNavigationClick,
       count: 3,
    effect:  ExpandingDotsEffect(activeDotColor: dark? TColors.light: TColors.dark,dotHeight: 6),) );
  }
}
