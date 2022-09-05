// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.icon,
    required this.iconSiz,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final double iconSiz;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        6.0,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: iconSiz,
            color: Colors.black,
          )),
    );
  }
}
