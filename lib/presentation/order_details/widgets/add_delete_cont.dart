import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class AddDeleteCont extends StatelessWidget {
  const AddDeleteCont({super.key, this.svg});
  final String? svg;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffeafaf2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 13),
        child:
            svg != null
                ? SvgPicture.asset(svg!)
                : Image.asset(ImageManger.plus),
      ),
    );
  }
}
