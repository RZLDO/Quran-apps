import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  SmallText({
    super.key,
    required this.text,
    this.color = Colors.grey,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'poppins',
        fontWeight: FontWeight.w500,
        fontSize: size,
        color: color,
      ),
    );
  }
}
