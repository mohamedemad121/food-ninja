import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key, });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.7,
          child: Image.asset(
            ImageManger.splashImage,
            height: MediaQuery.of(context).size.height * (410 / 810),
          ),
        ),
        Positioned(
          top: 275,
          left: 102,
          right: 101,
          child: Image.asset(ImageManger.success, height: 162, width: 172),
        ),
      ],
    );
  }
}
