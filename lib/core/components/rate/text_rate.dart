import 'package:flutter/material.dart';
import 'package:foodninja/core/components/rate/rate_star.dart';

class TextRate extends StatelessWidget {
  const TextRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Thank You!',
          style: TextStyle(fontSize: 25, fontFamily: 'BentonSansbold'),
        ),
        Text(
          'Order Completed',
          style: TextStyle(fontSize: 25, fontFamily: 'BentonSansbold'),
        ),
        SizedBox(height: 20),
        Text(
          'Please rate your last Driver',
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
