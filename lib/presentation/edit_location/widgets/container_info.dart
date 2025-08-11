import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo({
    super.key,
    required this.text1,
    required this.text2,
    this.text3,
    this.edgeInsets,
  });
  final String text1, text2;
  final String? text3;
  final EdgeInsets? edgeInsets;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontFamily: 'BentonSansmeduim',
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              SvgPicture.asset(SvgManger.location),
              SizedBox(width: 14),
              Text(
                text2,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'BentonSansmeduim',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ShaderMask(
            shaderCallback:
                (bounds) => LinearGradient(
                  colors: [Color(0xff62e798), Color(0xff1ac179)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(Rect.fromLTWH(0, 0, 110, bounds.height)),
            child: Padding(
              padding: edgeInsets ?? EdgeInsets.zero,
              child: Text(
                text3 ?? '',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
