import 'package:flutter/material.dart';

class TextFieldMessege extends StatelessWidget {
  const TextFieldMessege({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 27),
          child: Icon(Icons.send_rounded),
        ),
        filled: true,
        fillColor: Color(0xffFFFFFF),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(color: Color(0xffFFFFFF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(color: Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}
