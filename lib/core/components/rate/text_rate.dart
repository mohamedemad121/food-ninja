import 'package:flutter/material.dart';
import 'package:foodninja/core/components/rate/rate_star.dart';

class TextRate extends StatelessWidget {
  const TextRate({super.key, required this.text1, required this.text2});
  final String text1,text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Thank You!',
          style: TextStyle(fontSize: 25, fontFamily: 'BentonSansbold'),
        ),
        Text(
          text1,
          style: TextStyle(fontSize: 25, fontFamily: 'BentonSansbold'),
        ),
        SizedBox(height: 20),
        Text(
         text2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontFamily: 'BentonSansBook',
          ),
        ),
        SizedBox(height: 40),
        RateStar(),
      ],
    );
  }
}
