import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/common/widgets/form_divider.dart';
import 'package:e_store/common/widgets/login_form.dart';
import 'package:e_store/features/authentication/screens/login/login_header.dart';


import 'package:e_store/features/authentication/screens/widgets/social_buttons.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title and subtitle
              TLoginHeader(),

              //form

              TLogInForm(),

              //Divider
              TFormDivider(dividerText: TTexts.orSigninWith.capitalize!,),

              const SizedBox(height: TSizes.spaceBtwSections,),
              //footer
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

