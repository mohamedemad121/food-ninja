import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/sign_up_success.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:go_router/go_router.dart';

class NotifictionSuccess extends StatefulWidget {
  const NotifictionSuccess({super.key});

  @override
  State<NotifictionSuccess> createState() => _NotifictionSuccessState();
}

class _NotifictionSuccessState extends State<NotifictionSuccess> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){

      context.push(AppRouter.knavigationbar);
    });
  }
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
            'Password reset succesful',
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontFamily: 'BentonSansbold',
            ),
          ),
          SizedBox(height: 129),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CustomButton(text: 'Back')),
        ],
      ),
    );
  }
}
