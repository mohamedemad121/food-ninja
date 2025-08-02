import 'package:flutter/material.dart';
import 'package:foodninja/core/components/chat_stack.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/voucher_notifiction/widgets/notification_list.dart';

class VoucherNotifiction extends StatelessWidget {
  const VoucherNotifiction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatStack(imagephoto: ImageManger.pattern2, text: 'Notification'),
            SizedBox(
              height: MediaQuery.of(context).size.height * (400 / 812),
              child: NotificationList(),
            ),
          ],
        ),
      ),
    );
  }
}
