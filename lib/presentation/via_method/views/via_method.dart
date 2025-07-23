import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/via_method/widgets/via_container.dart';
import 'package:go_router/go_router.dart';

class ViaMethod extends StatelessWidget {
  const ViaMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(
            top: 156,
            text: 'Forget Password?',
            teext:
                'select which contact details should we\nuse to reset your password',
          ),
          ViaContainer(
            height: 105,
            svgg: (SvgManger.messege),
            text: 'Via sms:',
            frame: (SvgManger.frame),
            frame2: (SvgManger.frame),
            text2: '4235',
          ),
          SizedBox(height: 20),
          ViaContainer(
            height: 105,
            svgg: (SvgManger.email),
            text: 'Via Email:',
            frame: (SvgManger.frame),

            text2: '@gmail',
          ),
          SizedBox(height: 269),
          InkWell(
            onTap: () {
              context.push(AppRouter.kpassword);
            },
            child: CustomButton(text: 'Next'),
          ),
        ],
      ),
    );
  }
}
