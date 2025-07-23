import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/sign_up_success.dart';

class SignUpNotifiction extends StatelessWidget {
  const SignUpNotifiction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SignUpSuccess(),
          SizedBox(height: 33),
          ShaderMask(
            shaderCallback:
                (bounds) => LinearGradient(
                  colors: [Color(0xff62e798), Color(0xff1ac179)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(Rect.fromLTWH(0, 0, 300, bounds.height)),
            child: Text(
              'Congrats!',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'BentonSansbold',
                color: Color(0xff53E88B),
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Your Profile Is Ready To Use',
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontFamily: 'BentonSansbold',
            ),
          ),
          SizedBox(height: 129),
          CustomButton(text: 'Try Order'),
        ],
      ),
    );
  }
}
