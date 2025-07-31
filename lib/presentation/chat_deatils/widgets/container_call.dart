import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:go_router/go_router.dart';

class ContainerCall extends StatelessWidget {
  const ContainerCall({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (93 / 812),

      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: ClipRRect(
              child:
                  image != null
                      ? Image.asset(image!)
                      : Icon(Icons.image_not_supported),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dianne Russel',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'BentonSansmeduim',
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(SvgManger.point),
                    SizedBox(width: 4),
                    Text(
                      'Online',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffcbcbcb),
                        fontFamily: 'BentonSansBook',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 81, right: 28),
            child: InkWell(
              onTap: () {
                context.push(AppRouter.kcallringing);
              },
              child: CircleAvatar(
                backgroundColor: Color(0xffe8f9f1),
                child: SvgPicture.asset(SvgManger.calllogo),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
