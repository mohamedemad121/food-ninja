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
      body: Column(
        children: [
          SignStack(text: 'Login To Your Account'),
          SizedBox(height: 66),
          CustomTextField(hintText: 'Email'),
          SizedBox(height: 12),
          CustomTextField(hintText: 'Password'),
          SizedBox(height: 20),
          Text(
            'or continue with',
            style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: ''),
          ),
          SizedBox(height: 20),
          SignInWith(),
          SizedBox(height: 20),
          Text(
            'Forget Your Password',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'BentonSans',
              color: Color(0xff4bdc8c),
            ),
          ),
          SizedBox(height: 36),
          InkWell(
            onTap: () {
              context.go(AppRouter.ksignin);
            },

            child: CustomButton(text: 'Login'),
          ),
        ],
      ),
    );
  }
}
