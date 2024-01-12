int sumOfDigits(int num) {
  int sum = 0;

  while (num != 0) {
    int rem = num % 10;
    sum = sum + rem;
    num = num ~/ 10;
  }

  return sum;
  
}
