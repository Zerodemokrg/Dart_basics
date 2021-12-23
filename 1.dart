import 'dart:io';

void main() {
  print("Write first number");
  String? a = stdin.readLineSync();
  print("Write second number");
  String? b = stdin.readLineSync();
  if (a != null && b != null) {
    print("Your NOD is:" + gcd(int.parse(a), int.parse(b)).toString());
  }
  if (a != null && b != null) {
    print("Your NOK is:" + lcm(int.parse(a), int.parse(b)).toString());
  }
}

int gcd(int a, int b) {
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

int lcm(int a, int b) {
  double nok;
  nok = a / gcd(a, b) * b;
  return nok ~/ 1;
}
