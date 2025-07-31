import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class MuteClose extends StatefulWidget {
  const MuteClose({super.key});

  @override
  State<MuteClose> createState() => _MuteCloseState();
}

class _MuteCloseState extends State<MuteClose> {
  bool islicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 78,
          width: 78,
          child: InkWell(
            onTap: () {
              setState(() {
                islicked = !islicked;
              });
            },
            child: CircleAvatar(
              backgroundColor: Color(0xffe8f9f2),
              child:
                  islicked
                      ? Image.asset(ImageManger.volume)
                      : SvgPicture.asset(SvgManger.volumeoff),
            ),
          ),
        ),
        SizedBox(width: 20),
        SizedBox(
          height: 78,
          width: 78,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            child: SvgPicture.asset(SvgManger.x),
          ),
        ),
      ],
    );
  }
}
