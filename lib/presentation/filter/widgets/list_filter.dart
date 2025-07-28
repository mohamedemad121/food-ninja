import 'package:flutter/material.dart';

class ListFilter extends StatelessWidget {
  const ListFilter({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xfffef6ed),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xffDA6317),
            fontSize: 12,
            fontFamily: 'BentonSansmeduim',
          ),
        ),
      ),
    );
  }
}
