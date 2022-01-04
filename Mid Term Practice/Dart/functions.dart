int sum(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

void main(List<String> args) {
  int a = 1;
  int b = 5;
  int result = sum(a, b);
  print("Result : " + result.toString());
}
