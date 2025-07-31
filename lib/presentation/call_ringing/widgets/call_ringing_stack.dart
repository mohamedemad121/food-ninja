import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class CallRingingStack extends StatelessWidget {
  const CallRingingStack({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * (400 / 812),
      child: Stack(
        children: [
          Image.asset(ImageManger.splashImage),
          Positioned(
            top: height * (200 / 812),
            left: width * (106 / 375),
            child: Image.asset(ImageManger.ringing),
          ),
        ],
      ),
    );
  }
}
