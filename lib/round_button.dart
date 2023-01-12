import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.buttonFunction});

  final IconData icon;
  final Function buttonFunction;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        buttonFunction();
      },
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: kRoundButtonColor,
      child: Icon(icon),
    );
  }
}
