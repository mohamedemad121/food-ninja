import 'package:flutter/material.dart';
import 'package:foodninja/presentation/chat_deatils/widgets/chat_stack.dart';
import 'package:foodninja/presentation/chat_deatils/widgets/container_messege.dart';
import 'package:foodninja/presentation/chat_deatils/widgets/text_field_messege.dart';

class ChatDeatils extends StatelessWidget {
  const ChatDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChatStackDeatils(),
            ContainerMessege(
              color1: 0xffF6F6F6,
              text: 'just to order',
              color2: 0xff181818,
              margin: EdgeInsets.symmetric(horizontal: 35),
            ),
            SizedBox(height: 20),
            ContainerMessege(
              text: 'okay, for what level of spiciences?',
              mygradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff4ce389), Color(0xff1ec47a)],
              ),
              color2: 0xffFFFFFF,
              margin: EdgeInsets.only(left: 90),
            ),
            SizedBox(height: 20),
            ContainerMessege(
              color1: 0xffF6F6F6,
              text: 'just to order',
              color2: 0xff181818,
              margin: EdgeInsets.symmetric(horizontal: 35),
            ),
            SizedBox(height: 20),
            ContainerMessege(
              text: 'okay im waiting    ',
              mygradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff4ce389), Color(0xff1ec47a)],
              ),
              color2: 0xffFFFFFF,
              margin: EdgeInsets.only(left: 180),
            ),
            SizedBox(height: 180),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFieldMessege(),
            ),
          ],
        ),
      ),
    );
  }
}
