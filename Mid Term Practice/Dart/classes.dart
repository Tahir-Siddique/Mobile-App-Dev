import 'dart:io';

class Math {
  int sum(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }

  int multiply(int a, int b) {
    return a - b;
  }

  int divide(int a, int b) {
    return a - b;
  }
}

class Calculator extends Math {
  int a = 0;
  int b = 0;
  int ch = 0;

  void showMenu() {
    print('''1. Add
2.Subtract
3.Multiply
4.Divide
5.Exit
''');
  }

  void choice() {
    print("Enter Choice:");
    this.ch = int.parse(stdin.readLineSync().toString());
  }

  void input_both() {
    print("Enter Number 1:");
    this.a = int.parse(stdin.readLineSync().toString());
    print("Enter Number 2:");
    this.b = int.parse(stdin.readLineSync().toString());
  }

  void result() {
    switch (this.ch) {
      case 1:
        print("Addition : " + (a + b).toString());

        break;
      case 2:
        print("Subtraction : " + (a - b).toString());
        break;
      case 3:
        print("Multiplication : " + (a * b).toString());
        break;
      case 4:
        print("Divide : " + (a / b).toString());
        break;
      default:
    }
  }
}

void main(List<String> args) {
  Calculator cal = new Calculator();
  do {
    cal.showMenu();
    cal.choice();
    cal.input_both();
    cal.result();
  } while (cal.ch != 5);
}
