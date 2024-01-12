import 'dart:io';
import 'palindromeCheck.dart';

void main() {
  print("Enter Range for Palindrome :");

  print("Enter Start Number :");
  int start = int.parse(stdin.readLineSync()!);

  print("Enter End Number :");
  int end = int.parse(stdin.readLineSync()!);

  int count = rangePalindromeCheck(start, end);
  print("Count : $count");
}
