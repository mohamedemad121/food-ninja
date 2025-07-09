import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:go_router/go_router.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 56),
            child: Center(
              child: Image.asset(
                ImageManger.onboardingimage1,
                height: MediaQuery.of(context).size.height * 0.434,
                width: double.infinity,
              ),
            ),
          ),
          SizedBox(height: 38),
          Text(
            'Find Your Comefort',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          Text(
            'Food Here',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Here You Can find a chef or dish for every',
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          Text(
            'taste and color Enjoy',
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          SizedBox(height: 42),
          CustomButton(
            text: 'Next',
            onTap: () {
              context.push(AppRouter.konboarding2);
            },
          ),
        ],
      ),
    );
  }
}
