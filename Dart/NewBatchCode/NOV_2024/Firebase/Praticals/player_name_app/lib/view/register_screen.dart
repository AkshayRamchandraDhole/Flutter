import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:player_name_app/widget/custom_snackbar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController _emailTextEditingController = TextEditingController();
  final TextEditingController _passwordTextEditingController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Register",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),

          ),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _emailTextEditingController,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                hintText: "Enter Your email",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                )
              ),
            ), 
          ),

          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _passwordTextEditingController,
              style:  const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              decoration:InputDecoration(
                hintText: "Enter Your password",
                hintStyle:  const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: (){
                    _showPassword = !_showPassword;
                    setState(() {
                      
                    });
                  },
                  child: Icon(
                    (_showPassword) ? Icons.visibility_off: Icons.visibility,
                    color: Colors.white,
                  ),
                )
              ),
            ), 
          ),

          const SizedBox(
            height: 20,
          ),

          GestureDetector(
            onTap: ()async {
              if(_emailTextEditingController.text.trim().isNotEmpty &&
                _passwordTextEditingController.text.trim().isNotEmpty
              ){
                  try{
                   UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
                      email: _emailTextEditingController.text.trim(),
                      password: _passwordTextEditingController.text.trim()
                      );

                      log("User Credential : $userCredential");

                      CustomSnackbar.showCustomSnackbar(
                        context: context, 
                        message: "User Register Successfully"
                        );

                        _emailTextEditingController.clear();
                        _passwordTextEditingController.clear();

                        Navigator.of(context).pop();

                  } on FirebaseAuthException catch(error){
                      print(error.code);
                      print(error.message);

                    CustomSnackbar.showCustomSnackbar(
                        context: context, 
                        message: error.message!,
                        );
                  }
              }else{
                  CustomSnackbar.showCustomSnackbar(
                        context: context, 
                        message: "Please Enter valid fields"
                        );
                
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 5.0,
              ),
              child: const Text("Register User",
              style: TextStyle(
                  fontSize: 25,

              ),
              ),
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          

        ],
      ),
    );
  }
}