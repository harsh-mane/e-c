import 'package:e_store/features/authentication/screens/signup/terms_and_condition_checkbox.dart';
import 'package:e_store/features/authentication/screens/verify_email/verify_email.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Icons.person_2_outlined)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Icons.person_2_outlined)),
              ),
            ),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //username

        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.firstName,
              prefixIcon: Icon(Icons.person_2_outlined)),
        ),

        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //E-Mail

        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Icons.email_outlined)),
        ),

        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //phone number

        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Icons.phone_enabled_outlined)),
        ),

        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //password

        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Icons.password_sharp),
              suffixIcon: Icon(Icons.remove_red_eye_outlined)),
        ),

        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        //Terms and conditions
        TTermsAndConditionCheckbox(),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        //signup button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: const Text(TTexts.createAccount)),
        )
      ],
    ));
  }
}
