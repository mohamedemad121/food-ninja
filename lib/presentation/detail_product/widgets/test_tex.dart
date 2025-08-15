import 'package:flutter/material.dart';

class TestTex extends StatelessWidget {
  const TestTex({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
                            'Testimonials',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'BentonSansbold',
                            ),
                          );
  }
}