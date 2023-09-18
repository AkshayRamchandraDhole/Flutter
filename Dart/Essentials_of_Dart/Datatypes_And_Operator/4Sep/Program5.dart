// Pre Inc/Dec and Post Inc/Dec Code

void main(){

	print("Pre Inc/Dec and Post Inc/Dec Code");

	int x = 12;

	int ans = ++x + ++x;
	print(ans);	// 27
	
	ans = --x + --x; 
	print(ans); 	// 25
	
	ans = ++x + x++;
	print(ans);  	// 26
	
	ans = --x + x--;
	print(ans); 	// 26

	print(x); // 12
}
