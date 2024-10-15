import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final double height; // Allows you to adjust the height when using this widget

  const HeaderWidget({super.key, this.height = 220});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, // Use the provided height or default to 242
      child: Image.asset(
        'Image/HEADER.png', // Path to your header image
        fit: BoxFit.cover,
      ),
    );
  }
}
