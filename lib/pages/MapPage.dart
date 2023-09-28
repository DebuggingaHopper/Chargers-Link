import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imageUrl =
        'assets/Cap-Map.png'; // Replace with your asset path

    return Scaffold(
      body: Center(
        child: PhotoView(
          imageProvider: AssetImage(imageUrl),
          minScale: PhotoViewComputedScale.covered,
          maxScale: PhotoViewComputedScale.covered * 2,
          enableRotation: true, // Allows image rotation
        ),
      ),
    );
  }
}
