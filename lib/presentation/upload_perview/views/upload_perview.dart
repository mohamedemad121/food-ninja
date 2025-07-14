import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/paymentview/widgets/payment_cont.dart';
import 'package:go_router/go_router.dart';

class UploadPerview extends StatelessWidget {
  const UploadPerview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(top: 188, text: 'Upload Your Photo\nProfile'),
          SizedBox(height: 59),
          PaymentCont(
            height: 238,
            edgeInsetsGeometry: EdgeInsetsGeometry.symmetric(horizontal: 56),
            image: Image.asset(ImageManger.uploadimage),
          ),
          SizedBox(height: 166),
          InkWell(
            onTap: () {
              context.push(AppRouter.ksetlocation);
            },
            child: CustomButton(text: 'Next'),
          ),
        ],
      ),
    );
  }
}
