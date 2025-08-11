import 'package:flutter/material.dart';
import 'package:foodninja/core/components/chat_stack.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/payment_order/widgets/payment_cont_deatils.dart';
import 'package:go_router/go_router.dart';

class PaymentOrder extends StatelessWidget {
  const PaymentOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatStack(text: 'Confirm Order', ),
            PaymentContDeatils(
              onTap2: () {
                context.push(AppRouter.keditlocation);
              },
              font: 'BentonSansbold',
              text1: 'Deliver To ',
              width: 14,
              svg: SvgManger.location,
              text2: '4517Washington Ave.Manchester.\nKentucky 38533',
            ),
            SizedBox(height: 20),
            PaymentContDeatils(
              onTap2: () {
                context.push(AppRouter.keditpayment);
              },
              font: 'assets/fonts/Roboto-Regular.ttf',
              text1: 'Payment Method',
              svg: SvgManger.pypallogo,
              text2: '2121 6352 8465 ****',
              width: 65,
            ),
          ],
        ),
      ),
    );
  }
}
