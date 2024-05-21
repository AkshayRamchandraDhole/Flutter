class EmployeeModel{
  String? status;
  Map<String,dynamic>? data;
  String? message;
  EmployeeModel(Map<String,dynamic> json){
    status = json['status'];
    data = json['data'];
    message = json['message'];
  }
}
