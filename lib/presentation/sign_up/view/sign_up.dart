import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/custom_text_field.dart';
import 'package:foodninja/core/components/sign_stack.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/presentation/sign_up/widgets/sign_in_with.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SignStack(text: 'Login To Your Account'),
            SizedBox(height: 66),
            CustomTextField(hintText: 'Email'),
            SizedBox(height: 12),
            CustomTextField(hintText: 'Password'),
            SizedBox(height: 20),
            Text(
              'or continue with',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: '',
              ),
            ),
            SizedBox(height: 20),
            SignInWith(),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Forget Your Password',
                style: TextStyle(
                  color: Color(0xff53E88B),
                  fontSize: 12,
                  fontFamily: 'BentonSansMedium',
                ),
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        context.push(AppRouter.ksigninprocess);
                      },
              ),
            ),
            SizedBox(height: 36),
            InkWell(
              onTap: () {
                context.push(AppRouter.ksignin);
              },

              child: CustomButton(text: 'Login'),
            ),
          ],
        ),
      ),
    );
  }
}
