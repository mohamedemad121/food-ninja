import 'package:flutter/material.dart';

class BottomOrderInfoSheet extends StatelessWidget {
  const BottomOrderInfoSheet({
    super.key,
    required this.text,
    required this.text2,required this.size,
  });
  final String text, text2;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Color(0xffFEFEFF),
              fontSize: size,
              fontFamily: 'assets/fonts/BentonSansMedium.otf',
            ),
          ),

          Text(
            text2,
            style: TextStyle(
              color: Color(0xffFEFEFF),
              fontSize: size,
              fontFamily: 'assets/fonts/BentonSansMedium.otf',
            ),
          ),
        ],
      ),
    );
  }
}
