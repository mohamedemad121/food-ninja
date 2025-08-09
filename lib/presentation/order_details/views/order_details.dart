import 'package:flutter/material.dart';
import 'package:foodninja/core/components/chat_stack.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/order_details/widgets/cont_order_details.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatStack(text: 'Order Deatils', imagephoto: ImageManger.pattern2),
            SizedBox(height: 20),
            ContOrderDetails(),
          ],
        ),
      ),
    );
  }
}
