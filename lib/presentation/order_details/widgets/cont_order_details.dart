import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/order_details/widgets/add_delete_cont.dart';
import 'package:foodninja/presentation/order_details/widgets/bootom_sheet_deatils.dart';
import 'package:foodninja/presentation/order_details/widgets/order_info.dart';
import 'package:go_router/go_router.dart';

class ContOrderDetails extends StatefulWidget {
  const ContOrderDetails({super.key, required this.image});
  final String image;

  @override
  State<ContOrderDetails> createState() => _ContOrderDetailsState();
}

class _ContOrderDetailsState extends State<ContOrderDetails> {
  int count = 0;
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
                child: BottomSheetDeatils(
                  onTap: () {
                    context.push(AppRouter.kpaymentorder);
                  },
                  image: ImageManger.rectangle,
                ),
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
              Image.asset(widget.image),
              SizedBox(width: 21),
              OrderInfo(),
              SizedBox(width: 31),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count--;
                  });
                },
                child: AddDeleteCont(
                  color: Color(0xffebfbf3),
                  svg: SvgManger.delete,
                  edgeInsets: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                ),
              ),
              SizedBox(width: 16),
              Text('$count'),
              SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: AddDeleteCont(
                  edgeInsets: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
