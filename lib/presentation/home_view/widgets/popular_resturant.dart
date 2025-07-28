import 'package:flutter/material.dart';

class PopularResturant extends StatelessWidget {
  const PopularResturant({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'BentonSansbold',
              fontSize: 15,
            ),
          ),
          Text(
            'View More',
            style: TextStyle(
              color: Color(0xffff9c65),
              fontFamily: 'BentonSansBook',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
