import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/paymentview/widgets/payment_cont.dart';
import 'package:go_router/go_router.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(top: 156, text: 'Payment Method',teext: 'This data will be displayed in your account\nprofile for security',),
          SizedBox(height: 20),
          PaymentCont(
            height: MediaQuery.of(context).size.height * (73 / 810),
            edgeInsetsGeometry: EdgeInsetsGeometry.symmetric(horizontal: 20),
            svgPicture: SvgPicture.asset(SvgManger.pypallogo),
          ),
          SizedBox(height: 17),
          PaymentCont(
            height: MediaQuery.of(context).size.height * (73 / 810),
            edgeInsetsGeometry: EdgeInsetsGeometry.symmetric(horizontal: 20),
            svgPicture: SvgPicture.asset(SvgManger.grouplogo),
          ),
          SizedBox(height: 17),
          PaymentCont(
            height: MediaQuery.of(context).size.height * (73 / 810),
            edgeInsetsGeometry: EdgeInsetsGeometry.symmetric(horizontal: 20),
            svgPicture: SvgPicture.asset(SvgManger.payoneerlogo),
          ),
          SizedBox(height: 219),
          InkWell(
            onTap: () {
              context.push(AppRouter.kuploadphoto1);
            },
            child: CustomButton(text: 'Next'),
          ),
        ],
      ),
    );
  }
}
