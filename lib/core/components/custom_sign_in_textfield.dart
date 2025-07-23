import 'package:flutter/material.dart';

class CustomSignInTextField extends StatelessWidget {
  const CustomSignInTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.contentpadding,
    this.suffixIcon, this.obscuretext =false,
  });
  final String? hintText;
  final Widget? prefixIcon, suffixIcon;
  final EdgeInsetsGeometry? contentpadding;
  final bool obscuretext;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
       obscureText: obscuretext ,
        decoration: InputDecoration(
          contentPadding: contentpadding,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Color(0xffFFFFFF),

          enabledBorder: outLineInputBorder(),
          focusedBorder: outLineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Color(0xffF4F4F4)),
    );
  }
}
