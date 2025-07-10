import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_sign_in_textfield.dart';
import 'package:foodninja/core/components/sign_stack.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SignStack(text: 'Sign Up For Free'),
            SizedBox(height: 65),
            CustomSignInTextField(
              hintText: 'Anamwp',
              prefixIcon: Image.asset(ImageManger.profile),
            ),
            SizedBox(height: 12),
            CustomSignInTextField(
              hintText: 'Anamwp',
              prefixIcon: Image.asset(ImageManger.messege),
            ),
            SizedBox(height: 12),
            CustomSignInTextField(
              hintText: 'Anamwp',
              prefixIcon: Image.asset(ImageManger.lock),
            ),
          ],
        ),
      ),
    );
  }
}
