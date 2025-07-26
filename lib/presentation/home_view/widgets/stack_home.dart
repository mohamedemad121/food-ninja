import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class StackHome extends StatelessWidget {
  const StackHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      height: MediaQuery.of(context).size.height * (150 / 810),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff49dd85), Color(0xff1cc379)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.green,
        borderRadius: BorderRadius.circular(22),
        image: DecorationImage(
          image: AssetImage(ImageManger.pattern),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(top: 15, child: Image.asset(ImageManger.stackhome)),
          Positioned(
            top: 40,
            left: 173,
            right: 10,
            child: Text(
              'Special Deal For\nOctober',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'BentonSansbold',
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 173,
            child: Container(
              height: 32,
              width: 82,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(color: Color(0xff20c67b), fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
