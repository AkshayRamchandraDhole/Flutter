int rangePalindromeCheck(int start, int end) {
  int count = 0;
  int check = 0;

  int rem = 0;
  for (int i = start; i <= end; i++) {
    int rev = 0;
    check = i;
    while (check != 0) {
      rem = check % 10;
      rev = rev * 10 + rem;
      check = check ~/ 10;
    }
    if (i == rev) {
      count++;
    }
  }

  return count;
}
