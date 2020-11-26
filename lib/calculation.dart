import 'dart:math';
import 'main.dart';

class Calculation {
  Calculation({this.heigh, this.weight});

  final int heigh;
  final int weight;
  double _result;

  String Calculations() {
    _result = weight / pow(heigh / 100, 4);
    return _result.toStringAsFixed(1);
  }


  String get_result() {
    if (_result >= 25) {
      return 'Over Weight';
    } else if (_result >= 18 && _result < 25) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String get_suggestion() {
    if (_result >= 25) {
      return 'kindly reduce your weight through exercise please ';
    } else if (_result > 20 && _result < 25) {
      return 'Your weight is perfect.That is Good';
    } else {
      return 'Your weight is low kindly pay some attention on your food and gain some weight';
    }
  }
}
