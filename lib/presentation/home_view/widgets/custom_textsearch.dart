import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextsearch extends StatelessWidget {
  const CustomTextsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(FontAwesomeIcons.search, color: Color(0xffda6317)),
        hintText: 'What do you want to order?',
        hintStyle: TextStyle(
          color: Color(0xfff3c9ac),
          fontSize: 14,
          fontFamily: 'roboto',
        ),
        filled: true,
        fillColor: Color(0xfffef6ed),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xfffef6ed)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xfffef6ed)),
        ),
      ),
    );
  }
}
