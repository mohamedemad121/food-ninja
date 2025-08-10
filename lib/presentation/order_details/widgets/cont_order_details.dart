import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/order_details/widgets/add_delete_cont.dart';
import 'package:foodninja/presentation/order_details/widgets/bootom_sheet_deatils.dart';
import 'package:foodninja/presentation/order_details/widgets/order_info.dart';

class ContOrderDetails extends StatelessWidget {
  const ContOrderDetails({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          builder:
              (context) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: BottomSheetDeatils(image: ImageManger.rectangle),
              ),
        );
      },
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
              Image.asset(image),
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
  }
}
