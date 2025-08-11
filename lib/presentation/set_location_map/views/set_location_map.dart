import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';
import 'package:foodninja/presentation/set_location_map/widgets/modal_set_location.dart';
import 'package:foodninja/presentation/set_location_map/widgets/text_field_map.dart';

class SetLocationMap extends StatelessWidget {
  const SetLocationMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(ImageManger.maps, fit: BoxFit.cover),
          ),
          Positioned(top: 21, left: 17, right: 16, child: TextFieldMap()),
          Positioned(
            top: 224,
            left: 72,
            right: 87,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder:
                      (context) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 17,
                          vertical: 15,
                        ),
                        child: ModalSetLocation(),
                      ),
                );
              },
              child: Image.asset(ImageManger.rader),
            ),
          ),
        ],
      ),
    );
  }
}
