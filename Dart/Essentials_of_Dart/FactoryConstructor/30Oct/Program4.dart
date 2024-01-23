
class Backend{
  String? lang;

  Backend._code(String lang){
    if(lang=='Javascript')
      this.lang='NodeJS';
    else if(lang=='Java')
      this.lang='Spingboot';
    else 
      this.lang='NodeJS/Springboot';
  }
  factory Backend(String lang){
    print("In Factory");
    return Backend._code(lang);
  }
}