import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class VerifictionCode extends StatefulWidget {
  const VerifictionCode({super.key});

  @override
  State<VerifictionCode> createState() => _VerifictionCodeState();
}

class _VerifictionCodeState extends State<VerifictionCode> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  String validpin = '1234';
  String? errortext;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackSignProcess(
              top: 188,
              text: 'Enter 4-digit\nVerefiction Code',
              teext: 'Code send to +6282014 This code will\nexpired in 01:30',
            ),
            SizedBox(height: 38),
            Form(
              key: globalKey,
              child: Column(
                children: [
                  Pinput(
                    errorTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    defaultPinTheme: PinTheme(
                      width: 90,
                      height: 90,
                      textStyle: TextStyle(fontSize: 33),
                    ),
                    validator: (value) {
                      if (value == validpin) {
                        return null;
                      } else {
                        return 'pin is in correct';
                      }
                    },
                  ),
                  SizedBox(height: 322),
                  CustomButton(
                    text: 'Next',
                    onTap: () {
                      if (globalKey.currentState!.validate()) {
                        context.push(AppRouter.kviamethod);
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
