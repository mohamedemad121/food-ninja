import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class MessegeOsder extends StatelessWidget {
  const MessegeOsder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Color(0xff4ce389), Color(0xff1ec47a)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Center(
          child: Stack(
            children: [
              SvgPicture.asset(SvgManger.pathcont),
              Positioned(
                top: 5,
                left: 5,
                right: 5,
                bottom: 5,
                child: SvgPicture.asset(SvgManger.pathicon),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
