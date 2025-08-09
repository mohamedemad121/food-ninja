import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/order_details/widgets/add_delete_cont.dart';
import 'package:foodninja/presentation/order_details/widgets/order_info.dart';

class ContOrderDetails extends StatelessWidget {
  const ContOrderDetails({super.key});
  static const List<String> listimage = [
    ImageManger.crap1,
    ImageManger.crap2,
    ImageManger.crap3,
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * (400 / 812),
      child: ListView.builder(
        itemCount: listimage.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              height: height * (103 / 812),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Row(
                  children: [
                    Image.asset(listimage[index]),
                    SizedBox(width: 21),
                    OrderInfo(),
                    SizedBox(width: 31),
                    AddDeleteCont(svg: SvgManger.delete),
                    SizedBox(width: 16),
                    Text('1'),
                    SizedBox(width: 16),
                    AddDeleteCont(),
                    
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
