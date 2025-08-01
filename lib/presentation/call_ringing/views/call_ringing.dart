import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/call_ringing/widgets/call_ringing_stack.dart';
import 'package:foodninja/presentation/call_ringing/widgets/mute_close.dart';

class CallRinging extends StatelessWidget {
  const CallRinging({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CallRingingStack(image: ImageManger.ringing),
            SizedBox(height: 30),
            Text(
              'Courtney Henry',
              style: TextStyle(fontSize: 25, fontFamily: 'BentonSansbold',),
            ),
            SizedBox(height: 20),
            Text(
              '15.23min',
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'BentonSansBook',
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 177),
            MuteClose(),
          ],
        ),
      ),
    );
  }
}
