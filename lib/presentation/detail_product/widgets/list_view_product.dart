import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/models/list_tile_model.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({super.key});
  static List<ListTileModel> list = [
    ListTileModel(
      image: ImageManger.meat,
      title: 'Spacy fresh crab',
      subtitle: '12 \$',
    ),
    ListTileModel(
      image: ImageManger.pizza,
      title: 'Spacy fresh crab',
      subtitle: '18 \$',
    ),
    ListTileModel(
      image: ImageManger.pizza,
      title: 'Spacy fresh crab',
      subtitle: '18 \$',
    ),
    ListTileModel(
      image: ImageManger.pizza,
      title: 'Spacy fresh crab',
      subtitle: '18 \$',
    ),
    ListTileModel(
      image: ImageManger.pizza,
      title: 'Spacy fresh crab',
      subtitle: '18 \$',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: height * (171 / 812),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(item.image),
                SizedBox(height: 16),
                Text(
                  item.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'BentonSansbold',
                  ),
                ),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    color: Colors.grey,
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
