import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/uploadphoto1/widgets/gallery_camera_container.dart';

class GalleryCamera extends StatelessWidget {
  const GalleryCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GalleryCameraContainer(
          image: SvgManger.galleryicon,
          text: 'From Gallery',
        ),
        SizedBox(width: 80),
        GalleryCameraContainer(image: SvgManger.cameraicon, text: 'Take Photo'),
      ],
    );
  }
}
