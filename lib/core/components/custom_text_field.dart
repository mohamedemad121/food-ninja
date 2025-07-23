import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.obscure=false, this.suffiexicon});
  final String hintText;
  final Widget? suffiexicon;
  final bool? obscure;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure!,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
        hintText: hintText,
        suffixIcon: suffiexicon,
        hintStyle: TextStyle(color: Colors.grey),
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
    );
  }
}
