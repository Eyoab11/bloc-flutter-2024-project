import 'package:flutter/material.dart';

class TealButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const TealButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          
        ),
      ),
      child: Text(text, style: TextStyle(
        color: Colors.orange,
      ),),
      
    );
  }
}