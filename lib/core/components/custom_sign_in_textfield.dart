import 'package:flutter/material.dart';

class CustomSignInTextField extends StatelessWidget {
  const CustomSignInTextField({super.key, this.hintText, this.prefixIcon, this.contentpadding});
  final String? hintText;
  final Widget? prefixIcon;
final EdgeInsetsGeometry? contentpadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:contentpadding,
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
