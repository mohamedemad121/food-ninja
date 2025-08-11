import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/components/custom_buttom2.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:go_router/go_router.dart';

class InfoModalSheet extends StatelessWidget {
  const InfoModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Location',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontFamily: 'BentonSansmeduim',
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              SvgPicture.asset(SvgManger.location),
              SizedBox(width: 14),
              Text(
                '4517 Washington Ave. Manchester,\n Kentucky 39495',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'BentonSansmeduim',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              context.push(AppRouter.ktrackorder);
            },
            child: CustomButtom2(text: 'Set location'),
          ),
        ],
      ),
    );
  }
}
