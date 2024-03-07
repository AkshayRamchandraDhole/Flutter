import 'package:flutter/material.dart';
class ListViewSeparatedDemo extends StatefulWidget{

  const ListViewSeparatedDemo({super.key});

  @override
  State createState() => _ListViewSeparatedDemoState();
}

class _ListViewSeparatedDemoState extends State{


List imageslist = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDYhCHAhFJv646AWF8uLOD8M5hlxEy4Jnd5BNz_LuxYQ&s",
  "https://media.gettyimages.com/id/1713118741/photo/thiruvananthapuram-india-rohit-sharma-of-india-poses-for-a-portrait-ahead-of-the-icc-mens.jpg?s=612x612&w=gi&k=20&c=rp0XEyFC2MQrprrKMX-Tmu3gHIZa7-e6okoH_rcUmTo=",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLI2vSbjj8vn5lysSFEVEVMG8IGrR1jEjVXWAADbE5Ow&s",
  "https://media.gettyimages.com/id/170323318/photo/london-england-india-captain-mahendra-singh-dhoni-instructs-his-team-during-the-icc-champions.jpg?s=612x612&w=gi&k=20&c=mlslz8N_55RUB33EszBAW3ID6vBBC7jt1q6zSdxLwTs=",
  "https://media.gettyimages.com/id/108996058/photo/bangalore-india-sachin-tendulkar-of-india-poses-during-a-portrait-session-ahead-of-the-2011.jpg?s=612x612&w=gi&k=20&c=UwEJoIRGMaf4_mWsnWsl0sfwk_qtejMfcIpnBkK_bPM="


];
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewDemo"),
        centerTitle : true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(

        itemCount: imageslist.length,

        separatorBuilder: (context, index) {

          return const Text("----------------------------------------------------------",
                style: TextStyle(
                  fontSize: 30,
                ),
          );
        },
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.all(10),
            child: Image.network(imageslist[index]),
            );

        }

      )
          
    );
  }
}
