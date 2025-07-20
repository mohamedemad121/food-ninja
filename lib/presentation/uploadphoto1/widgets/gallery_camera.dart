import 'package:flutter/material.dart';
import 'package:foodninja/core/constant/svg_manger.dart';
import 'package:foodninja/presentation/uploadphoto1/widgets/gallery_camera_container.dart';

class GalleryCamera extends StatelessWidget {
  const GalleryCamera({super.key, this.onCameraTap, this.onGalleryTap});
  final Function()? onCameraTap;
  final Function()? onGalleryTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          GestureDetector(
            onTap: onGalleryTap,
            child: GalleryCameraContainer(
              image: SvgManger.galleryicon,
              text: 'From Gallery',
            ),
          ),
          SizedBox(width: 80),
          GestureDetector(
            onTap: onCameraTap,
            child: GalleryCameraContainer(
              image: SvgManger.cameraicon,
              text: 'Take Photo',
            ),
          ),
        ],
      ),
    );
  }
}
