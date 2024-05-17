import 'package:expense_manager/transaction_screen.dart';
import 'package:flutter/material.dart';

import 'registration_screen.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState(); 
}
class _LoginScreenState extends State{

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
                height: 248,
                width: 280,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Login to your Account",
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
                    Container(
                      height: 49,
                      width: 280,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => TransactionScreen())
                          );
                      
                      }, 
                      
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(14, 161, 125, 1))
                      ),
                      child: const Text(
                          "Sign In ",
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
              const SizedBox(
                height: 200,
              ),
              Container(
                      height: 30,
                      width: 301, 
                      child:  Row(
                        children: [
                           const Text(
                              "Already have an account? ",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                          
                              ),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=> RegistrationScreen())
                              );
                            },
                          child: 
                          const Text("Sign up",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                          )
                          )
                        ],
                      ),
                    )
              
            ],
            ),
        )
          )
    );
  }
}