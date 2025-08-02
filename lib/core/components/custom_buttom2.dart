import 'package:flutter/material.dart';

class CustomButtom2 extends StatelessWidget {
  const CustomButtom2({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      child: Container(
        height: MediaQuery.of(context).size.height * (57 / 812),
        width: MediaQuery.of(context).size.width * (324 / 375),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [Color(0xff4ce389), Color(0xff1ec47a)],
          ),
        ),

        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
