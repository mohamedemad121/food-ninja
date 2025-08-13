import 'package:flutter/material.dart';
import 'package:foodninja/presentation/track_order/widgets/messege_call.dart';
import 'package:foodninja/presentation/track_order/widgets/profile_info.dart';

class TrackCall extends StatelessWidget {
  const TrackCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Track Order',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontFamily: 'BentonSansbold',
          ),
        ),
        SizedBox(height: 20),
        ProfileInfo(),
        SizedBox(height: 10),
        MessegeCall(),
      ],
    );
  }
}
