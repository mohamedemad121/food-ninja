import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/image_manger.dart';

class UploadPhotoCont extends StatelessWidget {
  const UploadPhotoCont({super.key, this.imagefile});
  final File? imagefile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 88),
      child: Container(
        height: MediaQuery.of(context).size.height * (220 / 810),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          image: DecorationImage(
            fit: BoxFit.cover,
            image:
                imagefile != null
                    ? FileImage(imagefile!) as ImageProvider
                    : AssetImage(ImageManger.uploadimage),
          ),
        ),
      ),
    );
  }
}//AssetImage(ImageManger.uploadimage),