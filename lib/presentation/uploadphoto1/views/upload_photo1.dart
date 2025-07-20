import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/presentation/uploadphoto1/widgets/gallery_camera.dart';
import 'package:foodninja/presentation/uploadphoto1/widgets/upload_photo_cont.dart';
import 'package:go_router/go_router.dart';

class UploadPhoto1 extends StatelessWidget {
  const UploadPhoto1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(top: 188, text: 'Upload Your Photo\nProfile'),
          SizedBox(height: 20),
          UploadPhotoCont(),

          SizedBox(height: 40),
          GalleryCamera(),

          InkWell(
            onTap: () {
              context.push(AppRouter.ksetlocation);
            },

            child: CustomButton(text: 'Next'),
          ),
        ],
      ),
    );
  }
}
