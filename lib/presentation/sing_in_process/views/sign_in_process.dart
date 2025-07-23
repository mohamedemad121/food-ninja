import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/custom_text_field.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:go_router/go_router.dart';

class SignInProcess extends StatelessWidget {
  const SignInProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(top: 188, text: 'Fill in your bio to get\nstarted',teext: 'This data will be displayed in your account\nprofile for security',),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: CustomTextField(hintText: 'First Name'),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: CustomTextField(hintText: 'Last Name'),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: CustomTextField(hintText: ' Mobile Number'),
          ),
          SizedBox(height: 220),
          Center(
            child: InkWell(
              onTap: () {
                context.push(AppRouter.kpaymentview);
              },
              child: CustomButton(text: 'Next'),
            ),
          ),
        ],
      ),
    );
  }
}
