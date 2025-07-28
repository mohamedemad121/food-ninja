import 'package:flutter/material.dart';
import 'package:foodninja/models/list_tile_model.dart';

class ListViewPopular extends StatelessWidget {
   ListViewPopular({super.key, });
final List<ListTileModel>listmodel =[



];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        width: MediaQuery.of(context).size.width * (147 / 375),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(children: [





],



        ),
      ),
    );
  }
}
