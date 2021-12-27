import 'dart:io';

void main() {
  print("Write your words string");
  String? a = stdin.readLineSync();
  if (a == null) {
    throw ("Number is null!");
  }
  searchNumbers(a);
}

List<int> searchNumbers(String s) {
  List<int> result = [];
  List<String> wordList = s.split(' ');
  for (int i = 0; i < wordList.length; i++) {
    if (_checkStringForNumber(wordList[i].trim()) == true) {
      result.add(int.parse(wordList[i].trim()));
    }
  }
  print(result);
  return result;
}

bool _checkStringForNumber(String s) {
  for (int i = 0; i < s.length; i++) {
    if (s.codeUnitAt(i) < 48 || s.codeUnitAt(i) > 57) {
      return false;
    } else {
      print((s[i]));
    }
  }
  return true;
}
