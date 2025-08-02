import 'package:flutter/material.dart';
import 'package:foodninja/core/components/chat_stack.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/chat_view/widgets/chat_list.dart';
import 'package:go_router/go_router.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ChatStack(imagephoto: ImageManger.pattern2,text: 'Chat',),
              SizedBox(height: 12),
              SizedBox(
                height: MediaQuery.of(context).size.height * (400 / 812),
                child: InkWell(
                  onTap: () {
                    context.push(AppRouter.kchatdeatils);
                  },
                  child: ChatList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
