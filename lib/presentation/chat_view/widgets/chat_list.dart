import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/models/list_tile_model.dart';

class ChatList extends StatelessWidget {
  ChatList({super.key});

  final List<ListTileModel> list = [
    ListTileModel(
      image: ImageManger.anamwp,
      title: 'Anamwp',
      subtitle: 'Your order just arrived',
      time: '20:00',
    ),
    ListTileModel(
      image: ImageManger.hawkins,
      title: 'Guy Hawkins',
      subtitle: 'Your order just arrived',
      time: '20:00',
    ),
    ListTileModel(
      image: ImageManger.leslie,
      title: 'Leslie Alexander',
      subtitle: 'Your order just arrived',
      time: '20:00',
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
            height: MediaQuery.of(context).size.height * (81 / 812),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(22),
            ),
            child: ListTile(
              leading: Image.asset(item.image),

              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'BentonSansmeduim',
                          ),
                        ),
                        Text(
                          item.subtitle,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffcbcbcb),
                            fontFamily: 'BentonSansBook',
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      item.time.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffcbcbcb),
                        fontFamily: 'BentonSansBook',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
// ListTile(
//       leading: Image.asset(ImageManger.menu2),

//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Herbal Pancake',
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Colors.black,
//                   fontFamily: 'BentonSansmeduim',
//                 ),
//               ),
//               Text(
//                 'Warung Herbal',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Color(0xffcbcbcb),
//                   fontFamily: 'BentonSansBook',
//                 ),
//               ),
//             ],
//           ),
//           Text(
//             '\$7',
//             style: TextStyle(
//               fontSize: 22,
//               color: Color(0xfffead1d),
//               fontFamily: 'BentonSansbold',
//             ),
//           ),
//         ],
//       ),
//     );
