import 'package:codelingo/Learner/C++/c++_submenu.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

final List<Map<String, dynamic>> items = cpp;

class CppMenu extends StatefulWidget {
  const CppMenu({super.key});

  @override
  State<CppMenu> createState() => _CppMenuState();
}

class _CppMenuState extends State<CppMenu> {
  int completedItems=0;
  @override
  void initState() {
    super.initState();
    for(var item in items)
    {
      if(item['completed'] == 1){
        completedItems++;
      }
    }
    // You can do something with itemsCount here or just store it to use in your widget tree
  }
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Text("C++", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height*0.03)),
        backgroundColor: dark,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height*0.02,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),

              width: width,
              decoration: BoxDecoration(
                color:Color.fromRGBO(238, 80, 53, 1.0), // Your existing background color
                borderRadius: BorderRadius.circular(10), // Adjust the radius value as needed for circular corners
                border: Border.all(
                  color: Colors.transparent, // Border color
                  width: 5, // Border width
                  style: BorderStyle.solid, // Border style
                ),
              ),
              child: Row(
                children: [
                  Text("Completed: ", style: TextStyle(color: white, fontSize: height * 0.03, fontWeight: FontWeight.w700),),//$completedItems/${items.length}

                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CppSubmenu(data: items[index])));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white10), // Use your background color
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 15, vertical: 20)),
                      elevation: MaterialStateProperty.all(0), // Adjust elevation if needed
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.transparent, // Border color
                            width: 8, // Border width
                          ),
                        ),
                      ),
                    ),
                    child: Container(
                      width: width, // Assuming 'width' is defined elsewhere
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(6),
                            width: height * 0.04, // Define the width of the container
                            height: height * 0.04,
                            decoration: BoxDecoration(
                              color: Colors.white, // Your existing background color
                              borderRadius: BorderRadius.circular(360), // Adjust the radius value as needed for circular corners
                              border: Border.all(
                                color: Colors.white, // Border color
                                width: 5, // Border width
                                style: BorderStyle.solid, // Border style
                              ),
                            ),
                            child: Center(child: Text((index+1).toString(),style: TextStyle(color: light, fontWeight: FontWeight.bold, fontSize: height*0.023),)),
                          ),

                          SizedBox(width: width * 0.03), // Space between image and text
                          Expanded(
                            child: Text(
                              items[index]['topic'],
                              style: TextStyle(
                                fontSize: height * 0.03, // Adjust 'height' as per your layout
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(alignment: Alignment.topRight, child: (items[index]['completed']==0)?Icon(Icons.open_in_new, color: white, size: height*0.035,):Icon(Icons.check_box, color: Colors.green, size: height*0.035,),),
                          SizedBox(width: width*0.02,)
                        ],
                      ),
                    ),
                  ),
                );

              },
            )
          ],
        ),
      ),
    );
  }
}
