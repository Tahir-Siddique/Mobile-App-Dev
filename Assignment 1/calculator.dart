import 'dart:io';

class Math {
  double multilplication(double a, double b) {
    return a * b;
  }

  double subtraction(double a, double b) {
    return a - b;
  }

  double addition(double a, double b) {
    return a + b;
  }

  double division(double a, double b) {
    return a / b;
  }
}

class Calculator extends Math {
  int choice = -1;
  Calculator() {
    choice = 0;
  }
  void start() {
    do {
      print('''
    ************************ Calculator ****************************
    1. Addition
    2. Subtraction
    3. Multiplication
    4. Division
    5. Exit
    ''');
      print("Enter Number 1 : ");
      double a = double.parse(stdin.readLineSync().toString());
      print("Enter Number 2 : ");
      double b = double.parse(stdin.readLineSync().toString());

      print("Select Your Choice > ");
      choice = int.parse(stdin.readLineSync().toString());

      switch (choice) {
        case 1:
          print("${a} + ${b} = " + addition(a, b).toString());
          break;
        case 2:
          print("${a} - ${b} = " + subtraction(a, b).toString());
          break;
        case 3:
          print("${a} x ${b} = " + multilplication(a, b).toString());
          break;
        case 4:
          print("${a} / ${b} = " + division(a, b).toString());
          break;
        default:
          print("No Choice Exist.");
      }
    } while (choice != 5);
  }
}

main(List<String> args) {
  Calculator calculator = new Calculator();
  calculator.start();
}
