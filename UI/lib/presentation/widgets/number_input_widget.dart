import 'package:flutter/material.dart';

class NumberInputRow extends StatelessWidget {
  final String labelText;
  final String initialValue;
  final ValueChanged<String>? onChanged;

  const NumberInputRow({
    Key? key,
    required this.labelText,
    required this.initialValue,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            labelText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: TextFormField(
            initialValue: initialValue,
            keyboardType: TextInputType.number,
            onChanged: onChanged, // Pass the onChanged callback here
          ),
        ),
      ],
    );
  }
}
