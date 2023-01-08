import 'package:flutter/material.dart';

const double iconSize = 80.0;
const double sizedBoxHeight = 15.0;
const double iconFontSize = 18.0;
const Color iconTextColor = Color(0xFF8D8E98);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String buttonText;

  const IconContent({required this.icon, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          buttonText,
          style: const TextStyle(fontSize: iconFontSize, color: iconTextColor),
        )
      ],
    );
  }
}
