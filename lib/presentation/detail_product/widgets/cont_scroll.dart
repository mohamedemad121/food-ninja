import 'package:flutter/material.dart';

class ContScroll extends StatelessWidget {
  const ContScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 158,
                            ),
                            child: Container(
                              width: 58,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Color(0xfffef7ef),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          );
  }
}