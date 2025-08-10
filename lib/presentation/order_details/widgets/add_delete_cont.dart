import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddDeleteCont extends StatelessWidget {
  const AddDeleteCont({
    super.key,
    this.svg,
    required this.edgeInsets,
    this.color,
  });
  final String? svg;
  final EdgeInsets edgeInsets;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        gradient:
            color == null
                ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xff4ce389), Color(0xff1ec47a)],
                )
                : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: edgeInsets,
        child:
            svg != null
                ? SvgPicture.asset(svg!)
                : Text('+', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
