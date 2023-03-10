import 'package:flutter/material.dart';
import 'constants.dart';

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
          size: kIconSize,
        ),
        const SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          buttonText,
          style: kLabelTexStyle,
        )
      ],
    );
  }
}
