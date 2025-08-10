import 'package:flutter/material.dart';

class CustomButtonOrder extends StatelessWidget {
  const CustomButtonOrder({super.key, this.onTap});
final  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        height: MediaQuery.of(context).size.height * (57 / 812),
        width: MediaQuery.of(context).size.width * (324 / 375),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffFEFEFF),
        ),
      
        child: ShaderMask(
          shaderCallback:
              (bounds) => LinearGradient(
                colors: [Color(0xff62e798), Color(0xff1ac179)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(Rect.fromLTWH(0, 0, 110, bounds.height)),
          blendMode: BlendMode.srcIn,
          child: Center(
            child: Text(
              'Place my order',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
