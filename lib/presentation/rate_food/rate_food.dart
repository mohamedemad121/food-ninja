import 'package:flutter/material.dart';
import 'package:foodninja/core/components/rate/button_rate.dart';
import 'package:foodninja/core/components/rate/text_field_rate.dart';
import 'package:foodninja/core/components/rate/text_rate.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/call_ringing/widgets/call_ringing_stack.dart';
import 'package:go_router/go_router.dart';

class RateFood extends StatelessWidget {
  const RateFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CallRingingStack(image: ImageManger.ratefood),
              SizedBox(height: 20),
              TextRate(text1: 'Enjoy your meal',text2:  'Please rate your food',),
              SizedBox(height: 78),
              TextFieldRate(),
              SizedBox(height: 20),
              ButtonRate(
                onTap: () {
                  context.push(AppRouter.krateresturant);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
