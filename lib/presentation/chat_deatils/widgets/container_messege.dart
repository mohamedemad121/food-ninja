import 'package:flutter/material.dart';

class ContainerMessege extends StatelessWidget {
  const ContainerMessege({
    super.key,
    this.color1,
    required this.text,
    required this.color2,
    this.margin,
    this.mygradient,
  });
  final int? color1;
  final int color2;
  final String text;
  final EdgeInsetsGeometry? margin;
  final Gradient? mygradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        gradient: mygradient,
        color: mygradient == null && color1 != null ? Color(color1!) : null,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          left: 12,
          right: 29,
          bottom: 15,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Color(color2),
            fontFamily: 'BentonSansBook',
          ),
        ),
      ),
    );
  }
}
