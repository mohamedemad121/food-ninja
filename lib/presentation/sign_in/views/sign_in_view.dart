import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/custom_sign_in_textfield.dart';
import 'package:foodninja/core/components/sign_stack.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:go_router/go_router.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool status = false;
  bool emailme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SignStack(text: 'Sign Up For Free'),
            SizedBox(height: 40),
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
              suffixIcon: Icon(Icons.visibility),
            ),
            SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: Color(0xff15BE77),
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value!;
                      });
                    },
                  ),

                  Text(
                    'Keep Me Signed In',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'BentonSansBook',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: Color(0xff15BE77),
                    value: emailme,
                    onChanged: (value) {
                      setState(() {
                        emailme = value!;
                      });
                    },
                  ),

                  Text(
                    'Email Me About Special Pricing',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'BentonSansBook',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 43),
            InkWell(
              onTap: () {
                context.push(AppRouter.ksigninprocess);
              },
              child: CustomButton(text: 'Create Account'),
            ),
            SizedBox(height: 20),
            ShaderMask(
              shaderCallback:
                  (bounds) => LinearGradient(
                    colors: [Color(0xff53E88B), Color(0xff15BE77)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(Rect.fromLTWH(0, 0, 200, bounds.height)),
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account',
                  style: TextStyle(
                    color: Color(0xff53E88B),
                    fontSize: 12,
                    fontFamily: 'BentonSansMedium',
                  ),
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// 'Already have an account',
//                 style: TextStyle(
//                   color: Color(0xff53E88B),
//                   fontSize: 12,
//                   fontFamily: 'BentonSansMedium',
//                 ),