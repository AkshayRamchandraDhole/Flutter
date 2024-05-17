import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget{
  const RegistrationScreen({super.key});

  @override
  State createState() => _RegistrationScreenState(); 
}
class _RegistrationScreenState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                  height: 50,
              ),
              Container(
                height: 58.82,
                width: 69.76,
                child: 
                  Image.asset("images/Group77.png"),
              ),
              const SizedBox(
                  height: 50,
              ),
              Container(
                height: 390,
                width: 280,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Create your Account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Name",
                        contentPadding: const EdgeInsets.all(10.0),
                        filled: true,
                        fillColor: const Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                        )
                     ),
                  
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Username",
                        contentPadding: const EdgeInsets.all(10.0),
                        filled: true,
                        fillColor: const Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                        )
                        
                      ),

                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        contentPadding: const EdgeInsets.all(10.0),
                        filled: true,
                        fillColor: const Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                        )
                        
                      ),

                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                        
                        hintText: "Confirm Password",
                        contentPadding: const EdgeInsets.all(10.0),
                        filled: true,
                        fillColor: const Color.fromRGBO(255, 255, 255, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                        )
                        
                      ),

                    ),
                  const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 49,
                      width: 280,
                      child: ElevatedButton(
                        onPressed: (){
                      
                      }, 
                      
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(14, 161, 125, 1))
                      ),
                      child: const Text(
                          "Sign Up ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255,255,255, 1)
                          ),
                      ),
                      ),
                    ),
                    
                  ],
                  ),
              ),
              
              
              
            ],
            ),
        )
          )
    );
  }
}