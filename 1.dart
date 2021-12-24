import 'dart:io';
import 'dart:math';

void main() {
  print("Write first number");
  String? a = stdin.readLineSync();
  print("Write second number");
  String? b = stdin.readLineSync();
  if (a != null && b != null) {
    print("Your NOD is:" + gcd(int.parse(a), int.parse(b)).toString());
    print("Your NOK is:" + lcm(int.parse(a), int.parse(b)).toString());
    print("Your first number factorize" + factorize(int.parse(a)).toString());
    print("Your second number factorize" + factorize(int.parse(b)).toString());
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

bool _is_prime(int x) {
  for (int i = 2; i <= sqrt(x); i++) {
    if (x % i == 0) {
      return false;
    }
  }

  return true;
}

List<int> find_dividers(int x) {
  List<int> dividers = [];

  for (int i = 1; i <= sqrt(x); i++) {
    if (x % i == 0) {
      if (_is_prime(i) == true) {
        dividers.add(i);
      }

      //для корня из x не существует парного делителя
      if (i * i != x) {
        if (_is_prime(x ~/ i) == true) {
          dividers.add(x ~/ i);
        }
      }
    }
  }
  //dividers.removeAt(0);
  return dividers;
}

List<int> factorize(int x) {
  List<int> factors = [];

  for (int i = 2; i <= sqrt(x); i++) {
    while (x % i == 0) {
      factors.add(i);
      x ~/= i;
    }
  }

  if (x != 1) {
    factors.add(x);
  }
  //factors.removeAt(0);
  return factors;
}
