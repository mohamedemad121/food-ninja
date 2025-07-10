import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class SignStack extends StatelessWidget {
  const SignStack({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          ImageManger.splashImage,
          height: MediaQuery.of(context).size.height * (336 / 812),
        ),
        Positioned(
          top: 47,
          child: Image.asset(
            ImageManger.logo,
            height: MediaQuery.of(context).size.height * (139 / 812),
            width: MediaQuery.of(context).size.height * (175 / 375),
          ),
        ),

        Positioned(
          top: 186,
          child: ShaderMask(
            shaderCallback:
                (bounds) => LinearGradient(
                  colors: [Color(0xff62e798), Color(0xff1ac179)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(Rect.fromLTWH(0, 0, 110, bounds.height)),
            blendMode: BlendMode.srcIn,
            child: Text(
              'FoodNinja',
              style: TextStyle(fontFamily: 'Viga', fontSize: 40),
            ),
          ),
        ),
        Positioned(
          top: 234,
          child: Text(
            'Deliever Favorite Food',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 300,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'BentonSans',
              fontWeight: FontWeight.bold,
              height: 1.31,
            ),
          ),
        ),
      ],
    );
  }
}
