import 'dart:io';
void main() async{

	File f = new File('EmployeeInfo.txt');
	f.create();

	print("Enter Employee Information :");
	print("Enter Employee Name: ");
	String empName = stdin.readLineSync()!;
	
	print("Enter Employee Id: ");
	String empId = stdin.readLineSync()!;
	
	print("Enter Employee Salary: ");
	String empSal = stdin.readLineSync()!;
	
	print("Enter Employee Designation: ");
	String empDes = stdin.readLineSync()!;

	print("Writing into File.....");

	await f.writeAsString(empName,mode:FileMode.append);
	await f.writeAsString(empId,mode:FileMode.append);
	await f.writeAsString(empSal,mode:FileMode.append);
	await f.writeAsString(empDes,mode:FileMode.append);

	print("Reading from file.....");
	String data = await f.readAsString();
	print(data);

	

	
	
}
