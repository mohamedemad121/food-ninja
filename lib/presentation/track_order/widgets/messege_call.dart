import 'package:flutter/material.dart';
import 'package:foodninja/presentation/track_order/widgets/call_profile.dart';
import 'package:foodninja/presentation/track_order/widgets/messege_osder.dart';

class MessegeCall extends StatelessWidget {
  const MessegeCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CallProfile(),
        MessegeOsder()
      ],
    );
  }
}