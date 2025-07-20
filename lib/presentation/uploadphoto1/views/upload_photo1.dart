import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodninja/core/components/custom_button.dart';
import 'package:foodninja/core/components/stack_sign_process.dart';
import 'package:foodninja/core/constant/app_router.dart';
import 'package:foodninja/presentation/uploadphoto1/widgets/gallery_camera.dart';
import 'package:foodninja/presentation/uploadphoto1/widgets/upload_photo_cont.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhoto1 extends StatefulWidget {
  const UploadPhoto1({super.key});

  @override
  State<UploadPhoto1> createState() => _UploadPhoto1State();
}

class _UploadPhoto1State extends State<UploadPhoto1> {
  File? file;
  getImage() async {
    final ImagePicker picker = ImagePicker();
    
    final XFile? imageCamera = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (imageCamera != null) {
      setState(() {
        file = File(imageCamera.path);
      });
    }
  }

  uploadImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imageGallery = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (imageGallery != null) {
      setState(() {
        file = File(imageGallery.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackSignProcess(top: 188, text: 'Upload Your Photo\nProfile'),
          SizedBox(height: 20),
          UploadPhotoCont(imagefile: file),

          SizedBox(height: 40),
          GalleryCamera(
            onCameraTap: () async {
              await getImage();
            },
            onGalleryTap: () async {
              await uploadImage();
            },
          ),
          SizedBox(height: 60),
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
