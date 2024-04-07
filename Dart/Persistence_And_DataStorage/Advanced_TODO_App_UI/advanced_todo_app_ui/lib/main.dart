import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
//import '../../models/todomodel.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoAppUI(),
    );
  }
}

class ToDoAppUI extends StatefulWidget {

  const ToDoAppUI({super.key});
  @override
  State<ToDoAppUI> createState() => ToDoAppUIState();
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

class ToDoAppUIState extends State<ToDoAppUI> {

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 35,
                ),
                child: Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Core2web",
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "CREATE TASK",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            )),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Slidable(
                                closeOnScroll: true,
                                endActionPane: ActionPane(
                                    extentRatio: 0.2,
                                    motion: const Drawer(),
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                      89, 57, 241, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Icon(
                                                  Icons.edit,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                      89, 57, 241, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Icon(
                                                  Icons.delete,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                                key: ValueKey(index),
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 20, top: 20),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.05),
                                      width: 0.05,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(0, 4),
                                        blurRadius: 20,
                                        color: Color.fromRGBO(0, 0, 0, 0.13),
                                      )
                                    ],
                                    borderRadius:
                                        const BorderRadius.all(Radius.zero),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  217, 217, 217, 1),
                                            ),

                                          //child: Image.asset("assets/circleImage.png"),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          SizedBox(
                                            width: 260,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Lorem Ipsum is simply dummy industry. ",
                                                  style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Simply Dummy text of the printing and type settingindustry. Lorem Ipsum Lorem Ipsum Lorem. ",
                                                  style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "10 July 2023",
                                                  style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          /* Checkbox(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              activeColor: Colors.green,
                                              value: true,
                                              onChanged: (val) {})*/
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ))
                    ],
                  ),
                ),
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        onPressed: () {},
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
