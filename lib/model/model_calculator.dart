class CalculatorModel {
  String output = "0";
  String input = "";
  double num1 = 0;
  double num2 = 0;
  String operator = "";
  String expression = "";

  void clear() {
    input = "";
    output = "0";
    num1 = 0;
    num2 = 0;
    operator = "";
    expression = "";
  }

  void setOperator(String op) {
    num1 = double.parse(input);
    operator = op;
    input = "";
  }

  void calculate() {
    num2 = double.parse(input);
    double result;
    if (operator == "+") {
      result = num1 + num2;
    } else if (operator == "-") {
      result = num1 - num2;
    } else if (operator == "*") {
      result = num1 * num2;
    } else if (operator == "/") {
      result = num1 / num2;
    } else {
      result = 0;
    }
    expression = "$num1 $operator $num2 = $result";
    output = result.toString();
    input = output;
    operator = "";
  }

  void appendInput(String value) {
    input += value;
    output = input;
  }
}
