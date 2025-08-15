import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular Menu',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'BentonSansbold',
                                ),
                              ),

                              Text(
                                'view all',
                                style: TextStyle(color: Color(0xffff8c4c)),
                              ),
                            ],
                          );
  }
}