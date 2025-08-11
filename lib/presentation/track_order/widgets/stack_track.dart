import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/track_order/widgets/track_info.dart';

class StackTrack extends StatelessWidget {
  const StackTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(ImageManger.maps, fit: BoxFit.cover),
        ),
        Positioned(
          top: 144,
          left: 195,
          child: Image.asset(ImageManger.trackmap),
        ),
        Positioned(
          top: 95,
          left: 195,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 15),
                  child: TrackInfo(),
                ),
              );
            },
            child: SvgPicture.asset(SvgManger.timetrack),
          ),
        ),
        Positioned(
          top: 38,
          right: 305,
          left: 25,

          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Stack(
              children: [
                SvgPicture.asset(SvgManger.container),
                Positioned(
                  left: 17,
                  top: 14,
                  child: SvgPicture.asset(SvgManger.back),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
