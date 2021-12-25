import 'dart:io';

void main() {
  print("Write number in binary format");
  String? a = stdin.readLineSync();
  if (a == null) {
    throw ("Number is null!");
  }
  print("Write number in dec format");
  String? b = stdin.readLineSync();
  if (b == null) {
    throw ("Number is null!");
  }
  //print(_checkNumberForBinary(a).toString());
  //print(_checkStringForNumber(a).toString());
  binaryToDec(int.parse(a));
  decToBinary(int.parse(b));

  // print(a.runes);
}

int binaryToDec(int n) {
  String s = n.toString();
  int k = 1;
  int result = 0;
  for (int i = s.length - 1; i >= 0; i--) {
    result += ((s.codeUnitAt(i) - 48) * k);
    k = k * 2;
  }
  print("Your result in dec: " + result.toString());
  return result;
}

int decToBinary(int n) {
  int k;
  String result = "";
  for (n; n != 1;) {
    k = n % 2;
    n = n ~/ 2;
    result = k.toString() + result;
    if (n == 1) {
      result = n.toString() + result;
    }
  }
  print("Your result in binary: " + result);
  return int.parse(result);
}

bool _checkNumberForBinary(String s) {
  for (int i = 0; i < s.length; i++) {
    if (s[i] != "0" && s[i] != "1") {
      return false;
    }
  }
  return true;
}

bool _checkStringForNumber(String s) {
  for (int i = 0; i < s.length; i++) {
    if (s.codeUnitAt(i) < 48 || s.codeUnitAt(i) > 57) {
      return false;
    } else {
      print((s.codeUnitAt(i) - 48).toString());
    }
  }
  return true;
}
