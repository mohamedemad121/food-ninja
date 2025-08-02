import 'package:flutter/material.dart';
import 'package:foodninja/core/components/chat_stack.dart';
import 'package:foodninja/core/components/custom_buttom2.dart';
import 'package:foodninja/core/components/voucher_promo/voucher_stack.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:go_router/go_router.dart';

class VoucherPromo extends StatelessWidget {
  const VoucherPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatStack(imagephoto: ImageManger.pattern2,text: 'Voucher Promo',),
            SizedBox(height: 20),
            VoucherStack(
              image: ImageManger.framevoucher,
              color1: 0xff009C51,
              color2: 0xffFFFFFF,
            ),
            SizedBox(height: 20),
            VoucherStack(
              image: ImageManger.framevoucher2,
              color1: 0xff6B3A5B,
              color2: 0xff6B3A5B,
            ),
            SizedBox(height: 304),
            CustomButtom2(
              text: 'Check Out',
              onTap: () {
                context.push(AppRouter.kvouchernotifiction);
              },
            ),
          ],
        ),
      ),
    );
  }
}
