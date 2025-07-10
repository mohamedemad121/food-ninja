import 'package:flutter/material.dart';

class CustomSignInTextField extends StatelessWidget {
  const CustomSignInTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });
  final String hintText;
  final Widget prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 28, vertical: 25),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xff3B3B3B).withOpacity(0.3)),
          prefixIcon: prefixIcon,
          filled: true,
          fillColor: Color(0xffFFFFFF),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffF4F4F4)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xffF4F4F4)),
          ),
        ),
      ),
    );
  }
}
