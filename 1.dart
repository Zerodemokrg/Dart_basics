import 'dart:io';

void main() {
  print("Write first number");
  String? a = stdin.readLineSync();
  print("Write second number");
  String? b = stdin.readLineSync();
  if (a != null && b != null) {
    print("Your NOD is:" + _gcd(int.parse(a), int.parse(b)).toString());
  }
  if (a != null && b != null) {
    print("Your NOK is:" + _lcm(int.parse(a), int.parse(b)).toString());
  }
}

int _gcd(int a, int b) {
  int nod;
  if (a < b) {
    int c = a;
    a = b;
    b = c;
  }
  while (a != 0 && b != 0) {
    if (a > b) {
      a = a % b;
    } else {
      b = b % a;
    }
  }
  nod = a + b;
  return nod;
}

int _lcm(int a, int b) {
  double nok;
  nok = a / _gcd(a, b) * b;
  return nok ~/ 1;
}
