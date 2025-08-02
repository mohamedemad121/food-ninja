import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/models/list_tile_model.dart';

class NotificationList extends StatelessWidget {
  NotificationList({super.key});
  final List<ListTileModel> list = [
    ListTileModel(
      image: SvgManger.checked,
      title: 'Your order has been taken by\nthe driver',
      subtitle: 'Recently',
    ),
    ListTileModel(
      image: SvgManger.dolar,
      title: 'Top up for\$100 was succesful',
      subtitle: '10:00Am',
    ),
    ListTileModel(
      image: SvgManger.xbutton,
      title: 'Your order has been canceled',
      subtitle: '22juny 2021',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * (100 / 812),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ListTile(
                leading: SvgPicture.asset(item.image),

                title: Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'BentonSansmeduim',
                  ),
                ),
                subtitle: Text(
                  item.subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffcbcbcb),
                    fontFamily: 'BentonSansBook',
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
