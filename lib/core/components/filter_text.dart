import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/presentation/home_view/widgets/custom_textsearch.dart';

class FilterText extends StatelessWidget {
  const FilterText({super.key, this.onTap, this.svg});
  final Function()? onTap;
  final String? svg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
        children: [
          Expanded(child: CustomTextsearch()),
          SizedBox(width: 9),
          if (svg != null) InkWell(onTap: onTap, child: SvgPicture.asset(svg!)),
        ],
      ),
    );
  }
}
