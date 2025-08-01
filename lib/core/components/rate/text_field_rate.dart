import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';

class TextFieldRate extends StatelessWidget {
  const TextFieldRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 19,
              right: 6,
              bottom: 16,
            ),
            child: SvgPicture.asset(SvgManger.editicon),
          ),
          contentPadding: EdgeInsets.only(top: 21, bottom: 20),
          hintText: 'Leave Feedback',
          hintStyle: TextStyle(
            fontSize: 14,
            fontFamily: 'BentonSansBook',
            color: Color(0xffcbcbcb),
          ),
          filled: true,
          fillColor: Color(0xffffffff),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffcbcbcb)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffcbcbcb)),
          ),
        ),
      ),
    );
  }
}
