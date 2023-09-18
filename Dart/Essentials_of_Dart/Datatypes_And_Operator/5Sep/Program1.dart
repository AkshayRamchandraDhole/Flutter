void main(){

	int x = 5;
	int y = 6;

	bool ans = ((++x < ++y) && (--x > ++y));
	print(ans);
	print(x);
	print(y);

	int a = 5;
	int b = 6;

	ans = ((++a < ++b ) || (--a > ++b));
	print(ans);
	print(a);
	print(b);
}
