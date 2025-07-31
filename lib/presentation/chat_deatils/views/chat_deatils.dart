import 'package:flutter/material.dart';
import 'package:foodninja/presentation/chat_deatils/widgets/chat_stack.dart';

class ChatDeatils extends StatelessWidget {
  const ChatDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [ChatStackDeatils(),]));
  }
}
