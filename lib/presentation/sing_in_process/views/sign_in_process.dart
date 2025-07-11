import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/custom_text_field.dart';
import 'package:foodninja/presentation/sing_in_process/widgets/stack_sign_process.dart';

class SignInProcess extends StatelessWidget {
  const SignInProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StackSignProcess(),
          SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'This data will be displayed in your account\nprofile for security',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'BentonSansBook',
                color: Colors.black,
              ),
            ),
          ),
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
          Center(child: CustomButton(text: 'Next')),
        ],
      ),
    );
  }
}
