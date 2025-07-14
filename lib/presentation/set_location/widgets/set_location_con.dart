import 'package:flutter/material.dart';

class SetLocationCon extends StatelessWidget {
  const SetLocationCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (57 / 810),
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          'Set Location',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'BentonSansMedium',
          ),
        ),
      ),
    );
  }
}
