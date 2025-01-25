import 'package:calculator_app/model/model_calculator.dart';

class CalculatorViewModel {
  final CalculatorModel _calculatorModel = CalculatorModel();

  String get output => _calculatorModel.output;
  String get expression => _calculatorModel.expression;

  void buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _calculatorModel.clear();
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "*" || buttonText == "/") {
      _calculatorModel.setOperator(buttonText);
    } else if (buttonText == "=") {
      _calculatorModel.calculate();
    } else {
      _calculatorModel.appendInput(buttonText);
    }
  }
}