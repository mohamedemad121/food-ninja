import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class ListViewPopularMenu extends StatelessWidget {
  const ListViewPopularMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(ImageManger.menu2),

          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Herbal Pancake',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'BentonSansmeduim',
                    ),
                  ),
                  Text(
                    'Warung Herbal',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffcbcbcb),
                      fontFamily: 'BentonSansBook',
                    ),
                  ),
                ],
              ),
              Text(
                '\$7',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xfffead1d),
                  fontFamily: 'BentonSansbold',
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Image.asset(ImageManger.photomenue),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fruit Salad',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'BentonSansmeduim',
                    ),
                  ),
                  Text(
                    'Wijie Resto',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffcbcbcb),
                      fontFamily: 'BentonSansBook',
                    ),
                  ),
                ],
              ),
              Text(
                '\$5',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xfffead1d),
                  fontFamily: 'BentonSansbold',
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Image.asset(ImageManger.photomenue2),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Green Noddle',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'BentonSansmeduim',
                    ),
                  ),
                  Text(
                    'Noddle Home',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffcbcbcb),
                      fontFamily: 'BentonSansBook',
                    ),
                  ),
                ],
              ),
              Text(
                '\$15',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xfffead1d),
                  fontFamily: 'BentonSansbold',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
