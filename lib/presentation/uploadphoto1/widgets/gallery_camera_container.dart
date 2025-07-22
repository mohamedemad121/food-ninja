import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GalleryCameraContainer extends StatelessWidget {
  const GalleryCameraContainer({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: MediaQuery.of(context).size.height * (100 / 810),
          width: MediaQuery.of(context).size.width * (100 / 375),
        child: Column(
          children: [
            SvgPicture.asset(image),
            SizedBox(height: 9),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'BentonSans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
