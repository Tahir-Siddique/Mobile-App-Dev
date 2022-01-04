import 'dart:io';

main(List<String> args) {
  int choice = 0;
  do {
    print('''
    ************************ Calculator ****************************
    1. Addition
    2. Subtraction
    3. Multiplication
    4. Division
    5. Exit
    ''');
    choice = int.parse(stdin.readLineSync().toString());

    switch (choice) {
      case 1:
        print("Enter Number 1 : ");
        double a = double.parse(stdin.readLineSync().toString());
        print("Enter Number 2 : ");
        double b = double.parse(stdin.readLineSync().toString());
        print("${a} + ${b} = " + addition(a, b).toString());
        break;
      case 2:
        print("Enter Number 1 : ");
        double a = double.parse(stdin.readLineSync().toString());
        print("Enter Number 2 : ");
        double b = double.parse(stdin.readLineSync().toString());
        print("${a} - ${b} = " + subtraction(a, b).toString());
        break;
      case 3:
        print("Enter Number 1 : ");
        double a = double.parse(stdin.readLineSync().toString());
        print("Enter Number 2 : ");
        double b = double.parse(stdin.readLineSync().toString());
        print("${a} x ${b} = " + multilplication(a, b).toString());
        break;
      case 4:
        print("Enter Number 1 : ");
        double a = double.parse(stdin.readLineSync().toString());
        print("Enter Number 2 : ");
        double b = double.parse(stdin.readLineSync().toString());
        print("${a} / ${b} = " + division(a, b).toString());
        break;
      default:
        print("Program is exiting....");
    }
  } while (choice != 5);
}

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
