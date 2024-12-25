// import 'dart:io';

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:player_name_app/view/login_screen.dart';

import 'model/player_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: 
    const FirebaseOptions(
  apiKey: "AIzaSyCJEow7avszzO9m_BYUZ2unZ_Ev48xi4T4",
  authDomain: "cricketplayers-a1031.firebaseapp.com",
  projectId: "cricketplayers-a1031",
  storageBucket: "cricketplayers-a1031.firebasestorage.app",
  messagingSenderId: "368174083602",
  appId: "1:368174083602:web:7dbc0ef738bf9d7f1172cb"
    ),
    );
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase App',
      home : LoginScreen(),
    );
  }
}

class PlayerScreen extends StatefulWidget {
  String email;
  PlayerScreen({super.key, required this.email});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {

  TextEditingController playerNameTextController = TextEditingController();
  TextEditingController jerseyNoTextController = TextEditingController();

  List<PlayerModel> playerList = [];

  final ImagePicker _imagePicker = ImagePicker();

  XFile? _selectedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          widget.email,
          style: const TextStyle(
            fontSize: 24,

          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context){
                  return const LoginScreen();
                })
              );
            },
            child: const Icon(
              Icons.logout
            ),
          )
        ],
      ),
      
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),

          /// Profile Photo 
          
          GestureDetector(
            onTap: () async{
              _selectedFile = await _imagePicker.pickImage(
                source: ImageSource.gallery
                ); 
                if(_selectedFile != null){
                 // print("File = ${_selectedFile!.path}");
                  setState(() {
                    
                  });
                }

            },
            child: Container(
              height: 300,
              width: 300,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(60),       
              ),
              child: (_selectedFile == null) ?
              Image.network("https://static.vecteezy.com/system/resources/previews/005/544/718/original/profile-icon-design-free-vector.jpg"):
              Image.file(File(_selectedFile!.path),
              fit:BoxFit.cover,
              )
              ,
            ),
          ),

          ///Player Name
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: playerNameTextController,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white
              ),
              decoration: const InputDecoration(
                hintText: "Enter Player Name",
                hintStyle: TextStyle(
                  fontSize:  18,
                  color: Colors.grey
                ),
                border: OutlineInputBorder(),
                
              ),
            ), 
            ),

            /// Player Jersey Number 
            
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: jerseyNoTextController,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white
              ),
              decoration: const InputDecoration(
                hintText: "Enter Player Jersey No",
                hintStyle: TextStyle(
                  fontSize:  18,
                  color: Colors.grey
                ),
                border: OutlineInputBorder(),
              
              ),
              keyboardType: TextInputType.number,
            ), 
            ),

            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () async {
                if(playerNameTextController.text.trim().isNotEmpty && 
                    jerseyNoTextController.text.trim().isNotEmpty          
                              ){


                                 

                              ///for valid file name
                             // String fileName = _selectedFile!.name + DateTime.now().toString();

                              /// Add image to Firebase 

                              // await FirebaseStorage.instance.ref().child(fileName).putFile(
                              //   File(_selectedFile!.path)
                              // ); 
                          
                          /// GET URL from FIREBASE 
                          
                       //  String url = await FirebaseStorage.instance.ref().child(fileName).getDownloadURL();

                          /// Upload info cloud database 
                          
                          Map<String,dynamic> data = {
                                  "playerName": playerNameTextController.text.trim(),
                                  "jerNo" : jerseyNoTextController.text.trim(),
                                  //"profilePic" : url,
                                 };

                                 

                               
                              
                            FirebaseFirestore.instance.collection("playerInfo").add(data);
                              playerNameTextController.clear();
                              jerseyNoTextController.clear();

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Data Added"),
                                ),
                              );

                              setState(() {
                                
                              });
                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid Data"),
                                ),
                              );

                              }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5
                  
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            GestureDetector(
              onTap: ()async{
                QuerySnapshot response = await FirebaseFirestore.instance
                .collection("playerInfo")
                .get();

                playerList.clear();

                for(int i=0; i< response.docs.length; i++){

                  playerList.add(
                    PlayerModel(
                      playerId: response.docs[i].id,
                     playerName: response.docs[i]['playerName'], 
                     jerserNo: response.docs[i]['jerNo'],
                    // profilePic: response.docs[i]['profilePic']
                     ),
                  );
                }
                setState(() {
                  
                });

              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5
                  
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Display",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(
            
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: playerList.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      //FirebaseFireStore.instance.collection('playerInfo').doc(playerList[index].playerId).delete();
                      playerList.removeAt(index);
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(10.0),
                      child : Row(
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey
                            ),
                            // child: Image.network(
                            //   playerList[index].profilePic,
                            //   width: 80,
                            //   height:80,
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Player Name : ${playerList[index].playerName}",
                                style: const TextStyle(
                                  fontSize: 18
                                ),
                                ),
                                 const SizedBox(
                                  height: 10,
                                 ),
                            
                                 Text("Jersey No : ${playerList[index].jerserNo}",
                                style: const TextStyle(
                                  fontSize: 18
                                ),
                                ),
                            
                              ],
                            ),
                          ),
                        ],
                      )
                    ),

                  );
                }
                ),
            ),

            
            
        ],
      ),
      
    );
  }
}