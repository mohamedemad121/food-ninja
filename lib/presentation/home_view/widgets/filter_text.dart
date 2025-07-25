import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/home_view/widgets/custom_textsearch.dart';

class FilterText extends StatelessWidget {
  const FilterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
        children: [
          Expanded(child: CustomTextsearch()),
          SizedBox(width: 9),
          SvgPicture.asset(SvgManger.filter),
        ],
      ),
    );
  }
}
