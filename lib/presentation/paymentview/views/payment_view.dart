import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/custom_sign_in_textfield.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(top: 156, text: 'Payment Method'),
          SizedBox(height: 20),
          CustomSignInTextField(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 125),
              child: SvgPicture.asset(SvgManger.pypallogo),
            ),
          ),
          SizedBox(height: 17),
          CustomSignInTextField(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 138),
              child: SvgPicture.asset(SvgManger.grouplogo),
            ),
          ),
          SizedBox(height: 20),

          CustomSignInTextField(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 126),
              child: SvgPicture.asset(SvgManger.payoneerlogo),
            ),
          ),
          SizedBox(height: 237),
          CustomButton(text: 'Next'),
        ],
      ),
    );
  }
}
