import 'package:flutter/material.dart';
import 'package:foodninja/core/components/chat_stack.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/edit_payment/widgets/edit_payment_cont.dart';

class EditPayment extends StatelessWidget {
  const EditPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatStack(text: 'Order Deatils', ),
            SizedBox(height: 20),
            EditPaymentCont(
              color1: 0xffFFFFFF,
              color2: 0xff3B3B3B,
              svg: SvgManger.pypallogo,
            ),
            SizedBox(height: 17),
            EditPaymentCont(
              color1: 0xffF6F6F6,
              color2: 0xffc7c7c8,
              svg: SvgManger.grouplogo,
            ),
            SizedBox(height: 17),
            EditPaymentCont(
              color1: 0xffF6F6F6,
              color2: 0xffc7c7c8,
              svg: SvgManger.payoneerlogo,
            ),
          ],
        ),
      ),
    );
  }
}
