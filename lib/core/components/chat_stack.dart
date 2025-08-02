import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class ChatStack extends StatelessWidget {
  const ChatStack({super.key, this.imagephoto, required this.text});
  final String? imagephoto;
  final String text;
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: screenheight * (146 / 812),
          child: Align(
            alignment: Alignment.topRight,
            child:
                imagephoto != null
                    ? Image.asset(imagephoto!)
                    : Image.asset(ImageManger.check),
          ),
        ),

        Positioned(
          top: screenheight * (38 / 812),
          right: screenwidth * (305 / 375),
          left: screenwidth * (25 / 375),

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
          top: screenheight * (102 / 810),
          left: screenwidth * (25 / 375),

          child: Text(
           text,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'BentonSansbold',
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
