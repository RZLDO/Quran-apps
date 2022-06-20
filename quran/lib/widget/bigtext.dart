import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;

  BigText({super.key, required this.text, this.color, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'poppins',
        fontWeight: FontWeight.w700,
        fontSize: size,
        color: color,
      ),
    );
  }
}
