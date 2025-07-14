import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentCont extends StatelessWidget {
  const PaymentCont({
    super.key,
    required this.height,
    required this.edgeInsetsGeometry,
    this.svgPicture,
    this.image,
  });
  final double height;
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final SvgPicture? svgPicture;
  final Image? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsGeometry,
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(22),
            image:
                image != null
                    ? DecorationImage(image: image!.image, fit: BoxFit.cover)
                    : null,
          ),
          child: Center(child: svgPicture),
        ),
      ),
    );
  }
}
