import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return "You're in the Obese range";
    } else if (_bmi >= 25) {
      return "You're in the Overweight range";
    } else if (_bmi >= 18.5) {
      return "You're in the Healthy range";
    } else if (_bmi < 18.5) {
      return "You're in the Underweight range";
    }
  }
}