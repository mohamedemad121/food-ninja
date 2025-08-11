import 'package:flutter/material.dart';
import 'package:foodninja/core/components/chat_stack.dart';
import 'package:foodninja/presentation/edit_location/widgets/edit_location_info.dart';

class EditLocation extends StatelessWidget {
  const EditLocation({super.key, this.text1, this.text2, this.text3});
  final String? text1, text2;
  final String? text3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatStack(text: 'Shipping'),
            SizedBox(height: 20),
            EditLocationInfo(
              text1: 'Order Location',
              text2: '8502 Preston Rd. Inglewood,\nMaine 98380',
            ),
            SizedBox(height: 20),
            EditLocationInfo(
              edgeInsets: EdgeInsets.only(bottom: 20, left: 60),
              text1: 'Deliver To',
              text2: '4517 Washington Ave. Manchester,\nKentucky 39495',
              text3: 'set location',
            ),
          ],
        ),
      ),
    );
  }
}
