import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
//import 'todo_model.dart';

class ToDoAppUI extends StatefulWidget {
  const ToDoAppUI({super.key});

  @override
  State<ToDoAppUI> createState() => _ToDoAppUIState();
}

class _ToDoAppUIState extends State<ToDoAppUI> {


  
  /// show Bottom sheet 
   

  void showBottomModelSheet(bool isEdit){
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
            Text("Create TO-DO",
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
                    color: const Color.fromRGBO(89, 57, 241, 1),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),

                TextField(
                 // controller: titleController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(89, 57, 241, 1),
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
                    color: const Color.fromRGBO(89, 57, 241, 1),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),

                TextField(
                  maxLines: 2,
                 // controller: descriptionController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color:  Color.fromRGBO(89, 57, 241, 1),
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
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(89, 57, 241, 1),
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
                       // dateController.text = formattedDate;
                      });

                  },
                  readOnly: true,
                 // controller: dateController,
                  decoration: InputDecoration(
                    suffixIcon:  const Icon(Icons.date_range_rounded),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color:  Color.fromRGBO(89, 57, 241, 1),
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
                  //submitData(true,obj!);
                }else{
                  //submitData(false);
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
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 31.1,
                  top: 51.1
              
                ),
               child: 
                  Text(
                    "Good morning",
                    //textAlign: TextAlign.start,
                    style: GoogleFonts.quicksand(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ), 
              ),
               ],
          ),
              
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(
                         left: 35.1,
                        top: 5.1
              
                       ),
                     child: Text(
                          "Pathum",
                          style: GoogleFonts.quicksand(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1)
                          ),
                        ),
                   ),
                 ],
               ),

               const SizedBox(
                height: 13,
               ),
           
          
          Expanded(
            child: Container(
              // height: 569,
              // width: 490,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)
                ),
                color: Color.fromRGBO(217, 217, 217, 1)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0
                    ),
                    child: Text(
                      "CREATE TO DO LIST",
                       style: GoogleFonts.quicksand(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1)
                              ),
                    
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
            
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)
                        ),
                       color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: ListView.builder(
                    
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (contex,index){
                        return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 15,
                        ),
                        child: Slidable(
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(), 
                            children: [
                              Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                      onTap: (){
                                        
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 32,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(89, 57, 241, 1)
                                        ),
                                        child: const Icon(
                                          Icons.edit_outlined,
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 32,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(89, 57, 241, 1)
                                        ),
                                        child: const Icon(
                                          Icons.delete_outline,
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    ],
                                  ),
                            ]),
                          child: Container(
                            
                            width: 490,
                            decoration: const BoxDecoration(
                                  // borderRadius: BorderRadius.only(
                                  //     topLeft: Radius.circular(40.0),
                                  //     topRight: Radius.circular(40.0)
                                  //       ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 10),
                                      color: Color.fromRGBO(0, 0, 0, 0.1),  
                                      blurRadius: 10
                                    )
                                  ],
                                        color:  Color.fromRGBO(255, 255, 255, 1)
                                      ),
                           
                                child: 
                                Container(
                                  
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: const BoxDecoration(
                                               shape: BoxShape.circle,
                                                color: Color.fromRGBO(217, 217, 217, 1)
                                              ),
                                              
                                                child: Image.asset("assets/image.png"),
                                                
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Lorem Ipsum is simply dummy industry. ",
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12,
                                                      color: const Color.fromRGBO(0, 0, 0, 1)
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                      height: 10,
                                                  ),
                                                  Text(
                                                    "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 10,
                                                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                                                    ),
                                                  ),
                                
                                                  const SizedBox(
                                                      height: 10,
                                                  ),
                                
                                
                                                  Text(
                                                    "10 July 2023",
                                                    style: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 9,
                                                      color: const Color.fromRGBO(0, 0, 0, 0.7)
                                                    ),
                                                  ),
                                                  
                                
                                
                                                ],
                                              ),
                                            )
                                        
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              
                            
                          ),
                        ),
                      );
                      })
                    
                      
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
          
                
        ],
      ),

      floatingActionButton: FloatingActionButton(
        //shape: ShapeBorder.lerp(a, b, t),
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
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