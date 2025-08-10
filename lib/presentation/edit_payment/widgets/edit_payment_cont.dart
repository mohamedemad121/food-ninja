import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditPaymentCont extends StatelessWidget {
  const EditPaymentCont({
    super.key,
    required this.color1,
    required this.color2,
    required this.svg,
  });
  final int color1, color2;
  final String svg;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(color1),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(svg),
            Text(
              '2121 6352 8465 ****',
              style: TextStyle(
                color: Color(color2),
                fontSize: 14,
                fontFamily: 'BentonSansBook',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
