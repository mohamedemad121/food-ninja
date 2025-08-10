import 'package:flutter/material.dart';
import 'package:foodninja/presentation/order_details/widgets/stack_order_deatils.dart';

class BottomSheetDeatils extends StatelessWidget {
  const BottomSheetDeatils({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (210 / 812),
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22)),
      child: Stack(
        children: [
          Image.asset(image, fit: BoxFit.cover, width: double.infinity),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: StackOrderDeatils(),
          ),
        ],
      ),
    );
  }
}
