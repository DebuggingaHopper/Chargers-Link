import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

// This is where we provide the map to the user
class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imageUrl =
        'assets/Cap-Map.png'; // Replace it with the most updated map png

    return Scaffold(
      body: Center(
        child: PhotoView(
          // We then display the image to the user taking all of the screen space.
          imageProvider: AssetImage(imageUrl),
          minScale: PhotoViewComputedScale.covered,
          maxScale: PhotoViewComputedScale.covered * 2,
          enableRotation: true, // Allows image rotation
        ),
      ),
    );
  }
}
