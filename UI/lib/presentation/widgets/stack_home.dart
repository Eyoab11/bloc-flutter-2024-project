import 'package:flutter/material.dart';

class StackHome extends StatelessWidget {
  final String backgroundImage; // Image asset path

  const StackHome({Key ?key, required this.backgroundImage})
      : assert(backgroundImage != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Positioned.fill(
          child: Image.asset(
            backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        // Other widgets can be added above the background image
      ],
    );
  }
}
