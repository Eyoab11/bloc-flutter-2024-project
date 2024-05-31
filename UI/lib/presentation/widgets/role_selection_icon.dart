import 'package:flutter/material.dart';

class IconsChoosing extends StatefulWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;
  final bool isSelected;

  const IconsChoosing({
    Key? key,
    required this.icon,
    required this.text,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  _IconsChoosingState createState() => _IconsChoosingState();
}

class _IconsChoosingState extends State<IconsChoosing> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: widget.isSelected ? Colors.orange : Colors.transparent,
            radius: 40,
            child: Icon(
              widget.icon,
              size: 40,
              color: widget.isSelected ? Colors.white : Colors.orange,
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.text,
            style: TextStyle(
              color: widget.isSelected ? Colors.orange : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
