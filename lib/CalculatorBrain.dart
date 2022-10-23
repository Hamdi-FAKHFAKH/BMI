import 'dart:math';

class CalculatorBrain {
  final int h;
  final double w;
  double _bmi = 0;

  CalculatorBrain({required this.h, required this.w}) {
    _bmi = w / pow(h / 100, 2);
  }
  String calculBmi() {
    return _bmi.toStringAsFixed(
        1); // pour retourner un string avec 1 chiffre aprés virgule
  }

  String getShortmsg() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getMsg() {
    if (_bmi > 25) {
      return 'bissst you have a higher than Normal Body weight.Try to exercise more ';
    } else if (_bmi > 18.5) {
      return 'you have a normal body weight.keep going,Good Job!';
    } else {
      return 'aaaahi you have a lower than Normal body weight.Try to eat more';
    }
  }
}
