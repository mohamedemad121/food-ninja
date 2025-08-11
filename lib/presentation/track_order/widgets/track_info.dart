import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class TrackInfo extends StatelessWidget {
  const TrackInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * (237 / 812),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(ImageManger.tracpattern, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
