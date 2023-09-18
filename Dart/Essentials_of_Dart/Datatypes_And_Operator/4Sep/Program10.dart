// All operator mixed code

void main(){

	print('All Operator mixed code');
	int x = 10;
	int y = 8;
	
	print((++x < ++y) && (--x > ++x)); // False

	int a = 5;
	int b = 6;

	print((++a < ++b) || (--a > ++b)); // True

	print(x); // 11
	print(y); // 9
	print(a); // 6
	print(b); // 7
}
