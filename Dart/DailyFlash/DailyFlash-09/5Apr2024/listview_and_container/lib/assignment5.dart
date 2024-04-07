import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment5 extends StatefulWidget{

  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State{

  final _username = TextEditingController();
  final _phoneNumber = TextEditingController();

  String _uName= '';
  String _pNumber='';
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              TextField(
                controller: _username,
                decoration: const InputDecoration(
                  labelText: 'Enter Username',

                ),


              ),
              const SizedBox(
                height: 16.0,
              ),
               TextField(
                controller: _phoneNumber,
                decoration: const InputDecoration(
                  labelText: 'Enter Phone Number',

                ),


              ),

              const SizedBox(
                height: 16.0,
              ),

              ElevatedButton(
                onPressed: (){

                  setState(() {
                    _uName = _username.text;
                    _pNumber = _phoneNumber.text;
                  });
              }, 
              child:  Text("Submit",
              style: Theme.of(context).textTheme.headline6,
              
              )
              ),

              const SizedBox(height: 16.0),
              Text("Name: $_uName"),
              const SizedBox(height: 16.0),
              Text("Phone Number: $_pNumber"),








          ],
          ),
      )
    );
  }
}