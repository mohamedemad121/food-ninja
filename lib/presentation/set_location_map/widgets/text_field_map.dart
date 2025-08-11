import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class TextFieldMap extends StatelessWidget {
  const TextFieldMap({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 28,
            top: 23,
            bottom: 24,
            right: 19,
          ),
          child: SvgPicture.asset(SvgManger.search),
        ),
        hintText: 'Find Your Location',
        hintStyle: TextStyle(
          color: Color(0xfff2c9ae),
          fontSize: 12,
          fontFamily: 'roboto',
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 29),
        filled: true,
        fillColor: Color(0xffffffff),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(color: Color(0xffffffff)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(color: Color(0xffffffff)),
        ),
      ),
    );
  }
}
