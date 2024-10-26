import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.backgroundColor = Colors.blue,
    this.radius = 25,
    this.iconSize = 20,
    this.fontSize = 15,
    this.disable = false,
  });

  final Function() onPressed;
  final Color backgroundColor;
  final double radius;
  final String text;
  final double iconSize;
  final IconData icon;
  final double fontSize;
  final bool disable;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disable ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(MediaQuery.of(context).size.width * 0.80, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Wrap(
        children: [
          Icon(
            icon,
            size: iconSize,
            color: Colors.white,
          ),
          const SizedBox(width: 15),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
