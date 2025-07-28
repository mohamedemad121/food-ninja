import 'package:flutter/material.dart';

class PopularResturant extends StatelessWidget {
  const PopularResturant({super.key, required this.text, required this.text2, this.onTap});
  final String text,text2;
  final Function()? onTap;
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
          InkWell(
            onTap: onTap,
            child: Text(
              text2,
              style: TextStyle(
                color: Color(0xffff9c65),
                fontFamily: 'BentonSansBook',
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
