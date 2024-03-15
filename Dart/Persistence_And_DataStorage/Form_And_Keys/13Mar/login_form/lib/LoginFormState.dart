import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget{

  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPageState1();
}

class _LoginPageState1 extends State<LoginPage1>{

  //CONTROLLER
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  // KEYS

  // GlobalKey<FormFieldState> usernameKey = GlobalKey<FormFieldState>();
  // GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _fromKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                  height: 20,
              ),
             // Image.network("https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
             // width: 90,
             // ),
              const SizedBox(
                  height: 20,
              ),
              TextFormField(
                controller: userNameTextEditingController,
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  label: const Text("Enter Username"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.person
                    )
                ),
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return "Please Enter username";
                  }else{
                    return null;
                  }
                },
              ),
        
              const SizedBox(
                height: 20,
              ),
        
               TextFormField(
                controller: passwordTextEditingController,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  label: const Text("Enter Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye
                    )
                ),
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return "Please Enter password";
                  }else{
                    return null;
                  }
                },
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              ElevatedButton(
                onPressed: (){
                  bool loginValidated = _fromKey.currentState!.validate();
        
                  if(loginValidated!){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Login Successful"),
                      )
                    );
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Login Failed"),
                      )
                    );
                  }
                },
               child: const Text("Login"))
            ]),
        ),
      )

    );
  }

}