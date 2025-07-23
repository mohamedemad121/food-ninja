import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ViaContainer extends StatelessWidget {
  const ViaContainer({
    super.key,
    required this.height,
    this.svgg,
    required this.text,
    this.frame,
    this.frame2,
    required this.text2,
  });
  final double height;
  final String? svgg, frame, frame2;
  final String text, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(0xffFFFFFF),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Row(
          children: [
            SvgPicture.asset(svgg!),
            SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      SvgPicture.asset(frame!),
                      SizedBox(width: 14),
                      SvgPicture.asset(frame2 ?? ''),
                      SizedBox(width: 14),
                      Text(text2, style: TextStyle(fontSize: 15)),
                    ],
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
