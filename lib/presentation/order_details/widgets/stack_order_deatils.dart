import 'package:flutter/material.dart';
import 'package:foodninja/presentation/order_details/widgets/bottom_deatils_sheet.dart';

class StackOrderDeatils extends StatelessWidget {
  const StackOrderDeatils({super.key, });
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BottomOrderInfoSheet(text: 'Sub-Total', text2: '120 \$'),
        SizedBox(height: 7),
        BottomOrderInfoSheet(text: 'Delivery Change', text2: '10 \$'),
        SizedBox(height: 7),
        BottomOrderInfoSheet(text: 'Discount', text2: '20 \$'),
        SizedBox(height: 21),
        BottomOrderInfoSheet(text: 'Total', text2: '150 \$'),
      ],
    );
  }
}
