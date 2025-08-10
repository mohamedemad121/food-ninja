import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/order_details/widgets/bootom_sheet_deatils.dart';

class PaymentContDeatils extends StatelessWidget {
  const PaymentContDeatils({
    super.key,
    required this.text1,
    required this.svg,
    required this.text2,
    required this.width,
    required this.font, this.onTap2,
  });
  final String text1, text2;
  final String svg;
  final double width;
  final String font;
  final Function()? onTap2;
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
                  onTap:() {
                  
                  } ,
                  image: ImageManger.rectangle),
              ),
        );
      },
      child: Container(
        height: height * (108 / 812),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 20, top: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'BentonSansBook',
                      color: Colors.grey,
                    ),
                  ),
                  ShaderMask(
                    shaderCallback:
                        (bounds) => LinearGradient(
                          colors: [Color(0xff62e798), Color(0xff1ac179)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(Rect.fromLTWH(0, 0, 110, bounds.height)),
                    child: InkWell(
                      onTap:onTap2 ,
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'assets/fonts/Roboto-Regular.ttf',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 20),
              child: Row(
                children: [
                  SvgPicture.asset(svg),
                  SizedBox(width: width),
                  Text(
                    text2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: font,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
