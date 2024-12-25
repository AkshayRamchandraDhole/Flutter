import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'player_model.dart';

void main() async{
  if(kIsWasm){
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: "AIzaSyCO3I5H1tWaKOo3DEq82OII3_pp430aOXM",
  authDomain: "playernames-63500.firebaseapp.com",
  projectId: "playernames-63500",
  storageBucket: "playernames-63500.firebasestorage.app",
  messagingSenderId: "362555652387",
  appId: "1:362555652387:web:ca64eac0e3bd91f0833496"
    ),
    );
  }else{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase App',
      home : PlayerScreen(),
    );
  }
}

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

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
        title: const Text(
          "Firebase Player App",
          style: TextStyle(
            fontSize: 24,

          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
              child: (_selectedFile == null)?
              Image.network("https://icons.veryicon.com/png/o/miscellaneous/standard/avatar-15.png"):
              Image.file(File(_selectedFile!.path),
              fit: BoxFit.cover,
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
              onTap: (){
                if(playerNameTextController.text.trim().isNotEmpty && 
                    jerseyNoTextController.text.trim().isNotEmpty          
                              ){
                                 Map<String,dynamic> data = {
                                  "playerName": playerNameTextController.text.trim(),
                                  "jerNo" : jerseyNoTextController.text.trim(),
                                 };
                              
                              FirebaseFirestore.instance.collection("playerInfo").add(data);
                              playerNameTextController.clear();
                              jerseyNoTextController.clear();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Data Added"),
                                ),
                              );
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
                  "Add Data",
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
                QuerySnapshot response = await FirebaseFirestore.instance.collection("playerInfo").get();
                playerList.clear();

                for(int i=0; i< response.docs.length; i++){

                  playerList.add(
                    PlayerModel(
                      playerId: response.docs[i].id,
                     playerName: response.docs[i]['playerName'], 
                     jerserNo: response.docs[i]['jerNo']
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
                  "Get Data",
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
                      child : const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Player Name : ",
                          style: TextStyle(
                            fontSize: 18
                          ),
                          ),
                           SizedBox(
                            height: 10,
                           ),

                           Text("Jersey No : ",
                          style: TextStyle(
                            fontSize: 18
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