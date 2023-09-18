/*
	Bitwise Operator 

	1) AND :

		0 & 0 = 0
		1 & 0 = 0
		0 & 1 = 0
		1 & 1 = 1

*/

void main(){
	
	print("bitwise AND");
	int x = 4;	// 0100
	int y = 7;	// 0111
	print(x & y);   // 0100  // 4
	
	int a = 14;	// 0001110
	int b = 72;	// 1001000
	print(a & b);	// 0001000 // 8
}
