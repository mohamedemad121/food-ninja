import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:go_router/go_router.dart';

class StackSignProcess extends StatelessWidget {
  const StackSignProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                ImageManger.background,
                height: MediaQuery.of(context).size.height * (169 / 810),
              ),
            ),
          ),
          Positioned(
            top: 38,
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Stack(
                children: [
                  SvgPicture.asset(SvgManger.container),
                  Positioned(
                    left: 17,
                    top: 14,
                    child: SvgPicture.asset(SvgManger.icon),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 103,

            child: Center(
              child: Text(
                'Fill In Your bio To Get\nstarted',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'BentonSans',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
