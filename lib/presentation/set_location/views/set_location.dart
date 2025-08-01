import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/set_location/widgets/set_location_con.dart';
import 'package:go_router/go_router.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(top: 156, text: 'Set Your Location',teext: 'This data will be displayed in your account\nprofile for security'),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Row(
              children: [
                SvgPicture.asset(SvgManger.location),
                SizedBox(width: 14),
                Text(
                  'Your Location',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'BentonSansMedium',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 33),
          SetLocationCon(),
          SizedBox(height: 328),
          InkWell(
            onTap: () {
              context.push(AppRouter.ksignupnotifiction);
            },
            
            child: CustomButton(text: 'Next')),
        ],
      ),
    );
  }
}
