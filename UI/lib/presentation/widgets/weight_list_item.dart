import 'package:flutter/material.dart';

class WeightListItem extends StatelessWidget {
  final int weight;

  const WeightListItem({Key? key, required this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$weight kg',
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 16),
      ),
      onTap: () {
        print('Selected weight: $weight');
        
      },
    );
  }
}
