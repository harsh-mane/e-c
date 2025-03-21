import 'package:e_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_store/features/authentication/screens/onboarding/onboarding_button.dart';
import 'package:e_store/features/authentication/screens/onboarding/onboarding_navigation_dot.dart';
import 'package:e_store/features/authentication/screens/onboarding/onboarding_page.dart';
import 'package:e_store/features/authentication/screens/onboarding/onboarding_skip.dart';

import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button

          OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          OnboardingNavigationDot(),
          //Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
