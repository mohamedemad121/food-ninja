import 'package:flutter/material.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Spacy Fresh Crap'),
          SizedBox(height: 4),
          Text('waroenk kit'),
          SizedBox(height: 8),
          Text('\$ 35'),
        ],
      ),
    );
  }
}
