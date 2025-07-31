import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/chat_deatils/widgets/container_call.dart';

class ChatStackDeatils extends StatelessWidget {
  const ChatStackDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(ImageManger.splashImage),
        Positioned(
          top: height * (38 / 812),
          right: width * (305 / 375),
          left: width * (25 / 375),
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
        Positioned(
          top: height * (102 / 810),
          left: width * (25 / 375),

          child: Text(
            'Chat',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'BentonSansbold',
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: height * (155 / 812),
          left: width * (15 / 375),
          child: ContainerCall(image: ImageManger.anamwp),
        ),
      ],
    );
  }
}
