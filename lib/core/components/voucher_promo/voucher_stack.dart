import 'package:flutter/material.dart';

class VoucherStack extends StatelessWidget {
  const VoucherStack({super.key, required this.image, required this.color1, required this.color2});
  final String image;
  final int color1,color2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: MediaQuery.of(context).size.height * (122 / 812),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Color(0xffFFFFFF),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 173, top: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Special Deal For\nOctober',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'BentonSansbold',
                  color:Color(color2) ,
                ),
              ),
              SizedBox(height: 14),
              Container(
                height: 32,
                width: 82,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(color: Color(color1), fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
