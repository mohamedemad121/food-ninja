import 'package:flutter/material.dart';
import 'package:foodninja/presentation/set_location_map/widgets/info_modal_sheet.dart';

class ModalSetLocation extends StatelessWidget {
  const ModalSetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * (181 / 812),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(22),
      ),
      child: InfoModalSheet(),
    );
  }
}
