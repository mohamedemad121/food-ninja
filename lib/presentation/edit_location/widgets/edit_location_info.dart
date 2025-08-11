import 'package:flutter/material.dart';
import 'package:foodninja/presentation/edit_location/widgets/container_info.dart';

class EditLocationInfo extends StatelessWidget {
  const EditLocationInfo({
    super.key,

    required this.text1,
    required this.text2,
    this.text3, this.edgeInsets,
  });

  final String text1, text2;
  final String? text3;
  final EdgeInsets? edgeInsets;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(0xffFFFFFF),
      ),
      child: ContainerInfo(
        edgeInsets:edgeInsets ,
        text1: text1, text2: text2, text3: text3),
    );
  }
}
