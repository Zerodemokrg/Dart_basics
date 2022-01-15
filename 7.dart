import 'dart:io';

const double e = 1e-15;
void main() {
  double start = 0;
  print("Write number sqrt n");
  String? a = stdin.readLineSync();
  if (a == null) {
    throw ("Number is null!");
  }
  print("Write number A");
  String? b = stdin.readLineSync();
  if (b == null) {
    throw ("Number is null!");
  }

  print(
      "Your result: " + _toPrime(double.parse(a), double.parse(b)).toString());
  print("Your result2: " +
      sqrtFromNumber(double.parse(a), double.parse(b)).toString());
}

double? sqrtFromNumber(double n, double a) {
  double? result;
  if (n == 0) {
    return 1;
  }
  double y = 0;
  double x1 = 0;
  double x2 = a * a;
  double x = 0;
  int s = 0;
  while ((y - a).abs() > e) {
    s++;
    x = (x2 + x1) / 2;
    y = _toPrime(n, x);
    if ((y - a) > 0)
      x2 = x;
    else
      x1 = x;
  }
  print(s.toString());

  //result = ((n - 1) * x + a / _toPrime(n - 1, x)) / n;
  return x;
}

double _toPrime(double n, double a) {
  if (n == 0) {
    return 1;
  }
  double result = 1;

  for (int i = 0; i <= n - 1; i++) {
    result = result * a;
  }
  return result;
}
