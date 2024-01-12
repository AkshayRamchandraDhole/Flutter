import 'dart:io';

import 'dartSecond.dart';

void main() {
  print("Enter Number : ");
  int num = int.parse(stdin.readLineSync()!);
  int ret = sumOfDigits(num);
  print("Sum : $ret");
}
