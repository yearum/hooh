import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPreviewWidget extends StatelessWidget {
  final CameraController controller;

  CameraPreviewWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    double scanArea = (MediaQuery.of(context).size.width < 1000 ||
            MediaQuery.of(context).size.height < 1000)
        ? 300.0
        : 300.0;
    return Stack(
      children: [
        // Camera preview
        CameraPreview(controller),

        // Overlay elements
        Positioned(
          left: (MediaQuery.of(context).size.width - scanArea) / 2,
          top: (MediaQuery.of(context).size.height - scanArea) / 2,
          child: Container(
            height: scanArea,
            width: scanArea,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),

        // Text above the scan area
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pindai Kulit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Arahkan Pemindai ke kulit anda!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
