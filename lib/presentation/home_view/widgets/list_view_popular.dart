import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/models/list_tile_model.dart';

class ListViewPopular extends StatelessWidget {
  ListViewPopular({super.key});

  final List<ListTileModel> listmodel = [
    ListTileModel(
      image: ImageManger.vegan,
      title: 'Vegan Resto',
      subtitle: '12min',
    ),
    ListTileModel(
      image: ImageManger.healthy,
      title: 'Healthy Food',
      subtitle: '8min',
    ),
    ListTileModel(
      image: ImageManger.goodfood,
      title: 'Good Food',
      subtitle: '12min',
    ),
    ListTileModel(
      image: ImageManger.smart,
      title: 'Smart Rose',
      subtitle: '8mins',
    ),
    ListTileModel(image: ImageManger.chef, title: 'Chef R', subtitle: '9mins'),
    ListTileModel(image: ImageManger.recto, title: 'Recto', subtitle: '12mins'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listmodel.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final item = listmodel[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: MediaQuery.of(context).size.width * (147 / 375),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(height: 26),
                Image.asset(
                  item.image,
                  height: MediaQuery.of(context).size.height * (73 / 810),
                ),
                SizedBox(height: 17),
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'BentonSansbold',
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xffa0a0a0),
                    fontFamily: 'BentonSansBook',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//  Container(
//         width: MediaQuery.of(context).size.width * (147 / 375),
//         decoration: BoxDecoration(
//           color: Color(0xffFFFFFF),
//           borderRadius: BorderRadius.circular(15),
//         ),
