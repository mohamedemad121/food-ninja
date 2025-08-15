import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
class Rate extends StatelessWidget {
  const Rate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffebfbf2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: Center(
          child: Row(
            children: [
              SvgPicture.asset(SvgManger.star4),
              SizedBox(width: 8),
              Text(
                '5',
                style: TextStyle(
                  color: Color(0xff2bcd7e),
                  fontSize: 16,
                  fontFamily: 'BentonSansbold',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
