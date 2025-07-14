import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/paymentview/widgets/payment_cont.dart';
import 'package:go_router/go_router.dart';

class UploadPhoto1 extends StatelessWidget {
  const UploadPhoto1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(top: 188, text: 'Upload Your Photo\nProfile'),
          SizedBox(height: 20),
          PaymentCont(
            height: 129,
            edgeInsetsGeometry: EdgeInsetsGeometry.symmetric(horizontal: 25),
            svgPicture: SvgPicture.asset(SvgManger.galleryicon),
          ),
          SizedBox(height: 20),
          PaymentCont(
            height: 129,
            edgeInsetsGeometry: EdgeInsetsGeometry.symmetric(horizontal: 25),
            svgPicture: SvgPicture.asset(SvgManger.cameraicon),
          ),
          SizedBox(height: 165),
          InkWell(
            onTap: () {
              context.push(AppRouter.kuploadpreview);
            },

            child: CustomButton(text: 'Next'),
          ),
        ],
      ),
    );
  }
}
