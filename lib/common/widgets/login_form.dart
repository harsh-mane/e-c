import 'package:e_store/features/authentication/screens/signup/signup.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLogInForm extends StatelessWidget {
  const TLogInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //email
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: TTexts.email),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
    
          //password
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password_rounded),
                labelText: TTexts.password,
                suffixIcon: Icon(Icons.remove_red_eye_outlined)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
    
          //Remember me and Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
    
              //forget password
              TextButton(
                onPressed: () {},
                child: const Text(TTexts.forgetPassword),
              )
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
    
          //signin button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () =>Get.to(()=>NavigationMenu()), child: Text(TTexts.signIn))),
    
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          //create account button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () =>Get.to(()=>const SignupScreen( )),
                  child: Text(TTexts.createAccount))),
        ],
      ),
    ));
  }
}
