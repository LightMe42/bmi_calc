import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});

  final int height;
  final int weight;

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }
}
