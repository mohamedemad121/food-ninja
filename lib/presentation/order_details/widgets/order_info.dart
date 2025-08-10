import 'package:flutter/material.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Spacy Fresh Crap',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'BentonSansbold',
              fontSize: 15,
            ),
          ),
          SizedBox(height: 4),
          Text('waroenk kit', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 3),
          ShaderMask(
            shaderCallback:
                (bounds) => LinearGradient(
                  colors: [Color(0xff62e798), Color(0xff1ac179)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(Rect.fromLTWH(0, 0, 10, bounds.height)),
            blendMode: BlendMode.srcIn,
            child: Text(
              '\$ 35',
              style: TextStyle(fontSize: 18, fontFamily: 'BentonSansbold'),
            ),
          ),
        ],
      ),
    );
  }
}
