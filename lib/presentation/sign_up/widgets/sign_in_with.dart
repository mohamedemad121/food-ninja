import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class SignInWith extends StatelessWidget {
  const SignInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * (57 / 812),
            width: MediaQuery.of(context).size.width * (152 / 375),

            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  ImageManger.facebook,
                  height: 25,
                  width: 25,
                ),
                Text(
                  'Facebook',
                  style: TextStyle(fontSize: 14, fontFamily: 'BentonSans'),
                ),
              ],
            ),
          ),
          SizedBox(width: 21),
          Container(
            height: MediaQuery.of(context).size.height * (57 / 812),
            width: MediaQuery.of(context).size.width * (152 / 375),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                 ImageManger.google,
                  height: 25,
                  width: 25,
                ),
                Text(
                  'Google',
                  style: TextStyle(fontSize: 14, fontFamily: 'BentonSans'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
