import 'package:flutter/material.dart';


class ButtonRate extends StatelessWidget {
  const ButtonRate({super.key, this.onTap});
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff4ce389), Color(0xff1ec47a)],
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90,
                  vertical: 21,
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: onTap,
           
         
          child: Container(
            decoration: BoxDecoration(color: Color(0xffFFFFFF)),
            child: Center(
              child: ShaderMask(
                shaderCallback:
                    (bounds) => LinearGradient(
                      colors: [Color(0xff53E88B), Color(0xff15BE77)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 21,
                    horizontal: 25,
                  ),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
