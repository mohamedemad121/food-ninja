import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class CallProfile extends StatelessWidget {
  const CallProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(0xffFFFFFF),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 101, vertical: 25),
          child: Row(
            children: [
              SvgPicture.asset(SvgManger.calllogo),
              SizedBox(width: 10),
              Text('call'),
            ],
          ),
        ),
      ),
    );
  }
}
