import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/track_order/widgets/track_call.dart';

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
          Positioned(top: 20, left: 20, right: 9, child: TrackCall()),
        ],
      ),
    );
  }
}
