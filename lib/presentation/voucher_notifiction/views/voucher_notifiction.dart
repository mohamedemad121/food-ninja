import 'package:flutter/material.dart';
import 'package:foodninja/core/components/chat_stack.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/presentation/voucher_notifiction/widgets/notification_list.dart';
import 'package:go_router/go_router.dart';

class VoucherNotifiction extends StatefulWidget {
  const VoucherNotifiction({super.key});

  @override
  State<VoucherNotifiction> createState() => _VoucherNotifictionState();
}

class _VoucherNotifictionState extends State<VoucherNotifiction> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      context.push(AppRouter.korderdetails);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatStack( text: 'Notification'),
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
