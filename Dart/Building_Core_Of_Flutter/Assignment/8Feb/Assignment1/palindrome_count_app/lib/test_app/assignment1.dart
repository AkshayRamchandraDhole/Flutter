import 'package:flutter/material.dart';
class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1>{

  int palCount = 0;
  int strCount = 0;
  int armCount = 0;

  // palindrome count check fundtion
  void palindrome(){
      palCount = 0;
      List<int> numbersList=[1,255,-777,121,111,234,999];

      for(int i=0;i<numbersList.length;i++){
        int temp = numbersList[i].abs();

        int reverseNum = 0;

        while(temp!=0){
          reverseNum = reverseNum * 10 + temp % 10;
          temp = temp ~/ 10;
        }

        if(reverseNum == numbersList[i].abs()){
          palCount++;
        }

      }
  }
  //ArmStrong Number check function

  void armStrong(){
    armCount = 0;
    List<int> numbersList=[153,371,111,234,567,5,123];
    for(int i=0;i<numbersList.length;i++){
      int temp = numbersList[i].abs();

      int sum=0;

      while(temp!=0){
        int rem = temp % 10;
        sum = sum + (rem*rem*rem);
        temp = temp ~/ 10;
      }

      if(sum == numbersList[i].abs()){
        armCount++;
      }
    }
  }


  // Strong Number check function
   void strong(){
    strCount = 0;
    List<int> numbersList=[152,145,111,234,567,5,123];
    for(int i=0;i<numbersList.length;i++){
      int temp = numbersList[i].abs();

      int sum=0;

      while(temp!=0){
        int rem = temp % 10;
        int f = fact(rem);
        temp = temp ~/ 10;
        sum = sum + f;
      }

      if(sum == numbersList[i].abs()){
        strCount++;
      }
    }
  }

  int fact(int num){
    int f=1;
    for(int i=1;i<=num;i++){
      f=f*i;
    }
    return f;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(
              title: const Text('Assignment1'),
            ),
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  //Button 1 Palindrome 
                  Text('Palindrome Number Count is :- $palCount '),

                  const SizedBox(
                      height: 20,
                    ),

                  ElevatedButton(
                    onPressed: (){
                      palindrome();
                      setState(() {

                      });
                    }, child: const Text('Palindrome Count'),
                    ),
                    
                    

                    const SizedBox(
                      height: 20,
                    ),

                    //Button 2 ArmStrong 
                    Text('ArmStrong Number count is :- $armCount '),

                     const SizedBox(
                      height: 20,
                    ),

                    ElevatedButton(
                    onPressed: (){
                      armStrong();
                      setState(() {

                      });
                    }, child: const Text('ArmStrong Count'),
                    ),
                   
                    

                    const SizedBox(
                      height: 20,
                    ),

                    //Button 3 Strong 
                    Text('Strong Number Count is:- $strCount '),
                    const SizedBox(
                      height: 20,
                    ),

                    ElevatedButton(
                    onPressed: (){
                      strong();
                      setState(() {

                      });
                    }, child: const Text('Strong Count'),
                    ),
                    
                    
                ],
              ),
            ),
    );
  }
}