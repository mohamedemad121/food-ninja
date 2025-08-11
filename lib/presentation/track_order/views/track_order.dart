import 'package:flutter/material.dart';
import 'package:foodninja/presentation/track_order/widgets/stack_track.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: StackTrack());
  }
}
