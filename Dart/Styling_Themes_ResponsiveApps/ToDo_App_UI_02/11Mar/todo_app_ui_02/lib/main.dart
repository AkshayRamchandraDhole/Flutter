import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoApp extends StatefulWidget{

  const ToDoApp({super.key});

  @override
  State createState() => _ToDoAppState();
}
class ToDoModelClass{

  String title;
  String description;
  String date;

  ToDoModelClass({
    required this.title,
    required this.description,
    required this.date
  });
}
class _ToDoAppState extends State{

  List <ToDoModelClass> cardList = [
    ToDoModelClass(title: "Instagram API", description: "Backend Team la contact kra", date: "Feb 26 2024")
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  bool doEdit = false;

  //submit method while click on submit it will run

  void submit(bool doEdit,[ToDoModelClass? todoModelObj]){

    if(titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty
    ){
      if(!doEdit){
        setState(() {
          cardList.add(
            ToDoModelClass(
              title: titleController.text.trim(), 
              description: descriptionController.text.trim(), 
              date: dateController.text.trim())
          );
        });
      }else{
            setState(() {
              todoModelObj!.title = titleController.text.trim();
              todoModelObj.description = titleController.text.trim();
              todoModelObj.date = dateController.text.trim();
            });
      }
    }
    clearController();
  }

// to clear the value from controller
  void clearController(){
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  // delete the todo card once we click on delete icon

  void deleteCard(ToDoModelClass toDoModelObj){
    setState(() {
      cardList.remove(toDoModelObj);
    });
  }

    // edit the to do card when we click on edit icon

    void editCard(ToDoModelClass toDoModelobj){
      titleController.text = toDoModelobj.title;
      descriptionController.text = toDoModelobj.description;
      dateController.text = toDoModelobj.date;

      showBottomSheet(true,toDoModelobj);
    }

    @override
    void dispose(){
      super.dispose();
      titleController.dispose();
      descriptionController.dispose();
      dateController.dispose();
    }
  
  void showBottomSheet(bool doEdit,[ToDoModelClass? toDoModelObj]){

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true, 
      builder: (BuildContext context){
        return Padding(
          padding: const EdgeInsets.all(10),

          child: Column(
            children: [
               Text("Create Task",
                style: GoogleFonts.quicksand(
                fontWeight : FontWeight.w800,
                  fontSize: 22
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Column(
                 crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text("Title",
                    style: GoogleFonts.quicksand(
                fontWeight : FontWeight.w500,
                 fontSize: 12
               ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text("Description",
                     style: GoogleFonts.quicksand(
                 fontWeight : FontWeight.w500,
                 fontSize: 12
               ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  TextField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                   Text("Date",
                      style: GoogleFonts.quicksand(
                      fontWeight : FontWeight.w500,
                      fontSize: 12
                      ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  TextField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        
                        ),
                        suffixIcon: Icon(Icons.calendar_month_outlined)
                    ),
                    readOnly: true,
                    onTap: () async{
                      
                      DateTime? pickedDate = await showDatePicker(
                        context: context, 
                        initialDate: DateTime.now(),
                         firstDate: DateTime(2024), 
                         lastDate: DateTime(2025),
                        
                         );
                         String formatDate = DateFormat.yMMMd().format(pickedDate!);
                         setState(() {
                           dateController.text = formatDate;
                         });
                    },
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  

                ],
              ),
              ElevatedButton(
                  onPressed: (){
                    if(!doEdit){
                      submit(doEdit);
                    }else{
                      submit(doEdit,toDoModelObj);
                      Navigator.of(context).pop();
                    }
                  }, 
                  style: const ButtonStyle(
                    backgroundColor:  MaterialStatePropertyAll(
                      Color.fromRGBO(2, 167, 177, 1)
                    )
                  ),
                  child: const Text("Submit"),

                  ),

            ]),
        
        );
      }
      );
  }
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ToDo APP",
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),

      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
            //  height: 112,
             // width: 330,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromRGBO(0, 0, 0, 1)
                  ),
                  boxShadow: const[
                    BoxShadow(
                      offset: Offset(10, 10),
                      blurRadius: 5,
                      color: Color.fromRGBO(2, 167, 177, 0.5),
                    ),
                    
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),

                child: Column(
                  
                  children: [
                    // Row1

                    Container(
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.7),
                            )
                        ]
                      ),

                      //child: Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn0.iconfinder.com%2Fdata%2Ficons%2FVector-Icon-set-1-BevelAndEmboss-Net%2F89%2Ftodo-list.png&f=1&nofb=1&ipt=6d0e6fc27b1b7f511c391fe3ba9eeede4c6252cea004d74ebffe894210ccefa6&ipo=images")

                    ),
                     const SizedBox(
              width: 10,
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    cardList[index].title,
                    style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                    ),
                  ),
              
                  const SizedBox(
                    height: 10,
                  ),
              
                  Text(
                    cardList[index].description,
                     style: GoogleFonts.quicksand(
                           fontWeight: FontWeight.w600,
                           fontSize: 12,
                     ),
                  ),
              
              
                ],
              ),
            ),

            // Row2 
            Row(
              children: [
                Text(
                  cardList[index].date,
                   style: GoogleFonts.quicksand(
                         fontWeight: FontWeight.w500,
                         fontSize: 12,
                  ),
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        editCard(cardList[index]);
                      },

                      child: const Icon(
                        Icons.edit_note_outlined,
                        color: Color.fromRGBO(2, 167, 177, 1),
                        size: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        deleteCard(cardList[index]);
                      },

                      child: const Icon(
                        Icons.delete_outline_outlined,
                        color: Color.fromRGBO(2, 167, 177, 1),
                        size: 20,
                      ),
                    ),

                  ],
                )
              ],
               )
                  ]
                  ),
                ),
            ),

           

            );

        }
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            clearController();
            showBottomSheet(doEdit);
          },
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          child: const Text("ADD"),
          ),
    );
  }
}