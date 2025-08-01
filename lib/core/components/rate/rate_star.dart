import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class RateStar extends StatelessWidget {
  const RateStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(SvgManger.star),
        SizedBox(width: 23),
        SvgPicture.asset(SvgManger.star),
        SizedBox(width: 23),
        SvgPicture.asset(SvgManger.star),
        SizedBox(width: 23),
        SvgPicture.asset(SvgManger.star2),
        SizedBox(width: 23),
        SvgPicture.asset(SvgManger.star2),
      ],
    );
  }
}
