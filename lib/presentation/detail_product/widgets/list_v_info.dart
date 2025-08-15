import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/models/list_tile_model.dart';
import 'package:foodninja/presentation/detail_product/widgets/rate.dart';

class ListVInfo extends StatelessWidget {
  const ListVInfo({super.key});
static List<ListTileModel> list = [
    ListTileModel(
      image: ImageManger.dianne,
      title: 'Dianne Russell',
      subtitle: '12 April 2021',
      text1:
          'This Is great, So delicious! You Must Here, With Your family . . ',
      text2: '5',
      svg: SvgManger.star,
    ),
    ListTileModel(
      image: ImageManger.dianne,
      title: 'Dianne Russell',
      subtitle: '12 April 2021',
      text1:
          'This Is great, So delicious! You Must Here, With Your family . . ',
      text2: '5',
      svg: SvgManger.star,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 11, bottom: 19),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(item.image),
                SizedBox(width: 21),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'BentonSansmeduim',
                        ),
                      ),
                      Text(
                        item.subtitle,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(height: 20),
                      Text(
                        item.text1!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Rate(),
              ],
            ),
          ),
        );
      }
        );
  
  }
}
