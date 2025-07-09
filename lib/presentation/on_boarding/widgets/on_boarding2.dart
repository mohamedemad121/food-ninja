import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 56),
            child: Center(
              child: Image.asset(
                ImageManger.onboardingimage2,
                height: MediaQuery.of(context).size.height * 0.434,
                width: double.infinity,
              ),
            ),
          ),
          SizedBox(height: 38),
          Text(
            'Food Ninja Is Where Your',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          Text(
            'Comfort Food Lives',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Enjoy a fast and smooth food delivery at ',
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          Text(
            'your doorstep',
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          SizedBox(height: 42),
          CustomButton(text: 'Next'),
        ],
      ),
    );
  }
}
