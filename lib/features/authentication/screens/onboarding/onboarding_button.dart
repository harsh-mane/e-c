
import 'package:e_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBaeHeight(),
        child: ElevatedButton(
            onPressed: () =>OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(), backgroundColor: dark? TColors.buttonPrimary : Colors.black),
            child: Icon(Icons.arrow_forward_outlined)));
  }
}
