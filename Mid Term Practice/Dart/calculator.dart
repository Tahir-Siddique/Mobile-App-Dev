import 'dart:io';

void main(List<String> args) {
//   print('''1. Add
// 2.Subtract
// 3.Multiply
// 4.Divide
// ''');
//   print("Enter number 1: ");
//   int a = int.parse(stdin.readLineSync().toString());
//   print("Enter number 2: ");
//   int b = int.parse(stdin.readLineSync().toString());

//   print("Operation: ");
//   var input = stdin.readLineSync();
//   int choice = int.parse(input.toString());
//   if (choice == 1) {
//     print("Addition : " + (a + b).toString());
//   }
//   if (choice == 2) {
//     print("Subtraction : " + (a - b).toString());
//   }
//   if (choice == 3) {
//     print("Multiplication : " + (a * b).toString());
//   }
//   if (choice == 4) {
//     print("Divide : " + (a / b).toString());
//   }
  int choice = 1;
  do {
    print('''1. Add
2.Subtract
3.Multiply
4.Divide
5.Exit
''');
    print("Enter number 1: ");
    int a = int.parse(stdin.readLineSync().toString());
    print("Enter number 2: ");
    int b = int.parse(stdin.readLineSync().toString());
    print("Operation: ");
    var input = stdin.readLineSync();
    choice = int.parse(input.toString());
    // if (choice == 1) {
    //   print("Addition : " + (a + b).toString());
    // }
    // if (choice == 2) {
    //   print("Subtraction : " + (a - b).toString());
    // }
    // if (choice == 3) {
    //   print("Multiplication : " + (a * b).toString());
    // }
    // if (choice == 4) {
    //   print("Divide : " + (a / b).toString());
    // }
    switch (choice) {
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
  } while (choice != 5);
}
