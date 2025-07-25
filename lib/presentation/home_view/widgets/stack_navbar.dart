import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class StackNavbar extends StatelessWidget {
  const StackNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * (160 / 810),
          child: Align(
            alignment: Alignment.topRight,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(ImageManger.background),
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 31,

          child: Text(
            'Find Your\nFavorite Food',
            style: TextStyle(
              fontSize: 31,
              fontFamily: 'BentonSansbold',
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 71,
          left: 291,

          child: Container(
            padding: EdgeInsets.only(top: 14, bottom: 16, left: 14, right: 14),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffFFFFFF),
            ),
            child: SvgPicture.asset(SvgManger.iconnotif),
          ),
        ),
      ],
    );
  }
}
