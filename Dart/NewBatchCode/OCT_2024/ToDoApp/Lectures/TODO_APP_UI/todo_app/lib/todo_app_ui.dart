import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'get_fonts.dart';
import 'todo_model.dart';
class TodoAppUi extends StatefulWidget {
  const TodoAppUi({super.key});

  @override
  State<TodoAppUi> createState() => _TodoAppUiState();
}

class _TodoAppUiState extends State<TodoAppUi> {
  
  List<ToDoModel> todoCards = []; 

  List<Color> listofColors=[
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void clearController(){
                  
  titleController.clear();
  descriptionController.clear();
  dateController.clear();
                  
  }
  void submitData(bool isEdit, [ToDoModel? obj]){
    if(titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
          dateController.text.trim().isNotEmpty){

            if(isEdit){
                obj!.title = titleController.text;
                obj.description = descriptionController.text;
                obj.date = dateController.text;

            }else{
                todoCards.add(ToDoModel(
                  title: titleController.text, 
                  description: descriptionController.text, 
                  date: dateController.text),
                      );
                      }
                    
      }else{
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
             content: Text("Invalid Data",
                style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                  ),
                ),
              duration: const Duration(seconds: 2),
              ),
              );
     }
      Navigator.of(context).pop();
      clearController();
      setState(() {
                      
      });
  }
  void showBottomModelSheet(bool isEdit, [ToDoModel? obj]){
  showModalBottomSheet(
    isScrollControlled: true,
    isDismissible: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0)
      )
    ),
    context: context,
    builder: (context){
      return Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          /// to avoid the keyboard overlap
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Create Task",
            style: GoogleFonts.quicksand(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
            ),
          const SizedBox(
                  height: 12,
                ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1)
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),

                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1)
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.purple,
                       
                      ),
                       borderRadius: BorderRadius.circular(12),
                    )
                  ),
                
                ),

                const SizedBox(
                  height: 12,
                ),

                Text(
                  "Decription",
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1)
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),

                TextField(
                  maxLines: 2,
                  controller: descriptionController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1)
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.purple,
                       
                      ),
                       borderRadius: BorderRadius.circular(12),
                    )
                  ),
                
                ),

                const SizedBox(
                  height: 12,
                ),

                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1)
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),

                TextField(
                  onTap: ()async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context, 
                      firstDate: DateTime(2023), 
                      lastDate: DateTime(2025),
                      );
                      
                      String formattedDate = DateFormat.yMMMd().format(pickedDate!);

                      setState(() {
                        dateController.text = formattedDate;
                      });

                  },
                  readOnly: true,
                  controller: dateController,
                  decoration: InputDecoration(
                    suffixIcon:  const Icon(Icons.date_range_rounded),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1)
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.purple,
                       
                      ),
                       borderRadius: BorderRadius.circular(12),
                    )
                  ),
                
                ),

                const SizedBox(
                  height: 20,
                ),
              
              ],
              
           ),

           Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
                backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
              ),
              onPressed: (){
                if(isEdit){
                  submitData(true,obj!);
                }else{
                  submitData(false);
                }
                //submitData(false);
                
              },
              child: Text("Submit",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
              ),
              ),
           ),
           const SizedBox(
            height: 30,
           ),
          ],
        ),
      );
    },
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-do list",
        style: GoogleFonts.quicksand(
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(255, 255, 255, 1)
        ),
        
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: todoCards.length,
      
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 16
            ),
            child: Container(
              
              decoration: BoxDecoration(
                color: listofColors[index % listofColors.length],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    
                    blurRadius: 10
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    //1 
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/image.png"),
                        ),

                        const SizedBox(
                          width: 10,
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                todoCards[index].title,
                               style: GoogleFonts.quicksand(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(0, 0, 0, 1)
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),

                               Text(
                                todoCards[index].description,
                               style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(84, 84, 84, 1)
                                    ),
                              ),
                              
                              
                            ],
                          ),
                          ),
                      ],
                    ),

                    const SizedBox(
                                height: 14.0,
                              ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        
                      ),
                      child: Row(
                        children: [
                          Text(
                                todoCards[index].date,
                               style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      // color: const Color.fromRGBO(132, 132, 132, 1)
                                      color: getColor(132,132,132,1),
                                    ),
                              ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  titleController.text = todoCards[index].title;
                                  descriptionController.text = todoCards[index].description;
                                  dateController.text = todoCards[index].date;
                                  showBottomModelSheet(true,todoCards[index]);
                                  //submitData(true,todoCards[index]);
                                  setState(() {
                                  });
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: (){
                                  todoCards.remove(todoCards[index]);
                                  setState(() {
                                    
                                  });
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ),
            ),
          );

      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: (){
          showBottomModelSheet(false);
        },
        child: const Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
        
        ),
    );
  }
}