import 'package:flutter/material.dart';

class HeightListItem extends StatelessWidget {
  final int height;

  const HeightListItem({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$height cm',
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 16),
      ),
      onTap: () {
        print('Selected height: $height');
        
      },
    );
  }
}
