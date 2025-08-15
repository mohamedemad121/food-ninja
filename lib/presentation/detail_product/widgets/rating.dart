import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(SvgManger.mappin),
        SizedBox(width: 3),
        Text(
          '19 Km',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontFamily: 'assets/fonts/BentonSansUltraCondensedRegular.otf',
          ),
        ),
        SizedBox(width: 20),
        SvgPicture.asset(SvgManger.star3),
        SizedBox(width: 10),
        Text(
          '4,8 Rating',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontFamily: 'assets/fonts/BentonSansUltraCondensedRegular.otf',
          ),
        ),
      ],
    );
  }
}
