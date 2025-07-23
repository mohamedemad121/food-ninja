import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/custom_text_field.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:go_router/go_router.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool isPasswordvisible = false;
  bool isConfirmPasswordvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackSignProcess(
              top: 179,
              text: 'Reset Your Password\nhere',
              teext:
                  'select which contact details should we\nuse to reset your password',
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: CustomTextField(
                hintText: 'New Password',
                obscure: !isPasswordvisible,
                suffiexicon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordvisible = !isPasswordvisible;
                    });
                  },
                  icon:
                      isPasswordvisible
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: CustomTextField(
                hintText: 'Confirm Password',
                obscure: !isConfirmPasswordvisible,
                suffiexicon: IconButton(
                  onPressed: () {
                    setState(() {
                      isConfirmPasswordvisible = !isConfirmPasswordvisible;
                    });
                  },
                  icon:
                      isConfirmPasswordvisible
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                ),
              ),
            ),
            SizedBox(height: 290),
            InkWell(
              onTap: () {
                context.push(AppRouter.kNotifictionSuccess);
              },
              child: CustomButton(text: 'Next')),
          ],
        ),
      ),
    );
  }
}
