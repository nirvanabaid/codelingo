import 'package:codelingo/Learner/content.dart';
import 'package:flutter/material.dart';

import '../../c++_containers.dart';
import '../../constants.dart';

class CppSubmenu extends StatefulWidget {
  final Map<String, dynamic> data;

  const CppSubmenu({super.key, required this.data});

  @override
  State<CppSubmenu> createState() => _CppSubmenuState();
}

class _CppSubmenuState extends State<CppSubmenu> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    // Example of using the passed data. Make sure the key exists or provide a default value.
    String title = widget.data['topic'] ?? 'Default Title';

    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height*0.03)),
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
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.data['subtopics'].length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Content(c: widget.data['content'][index], subtopic: widget.data['subtopics'][index])));//widget.data['content'][index]

                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(light), // Use your background color
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 15, vertical: 20)),
                      elevation: MaterialStateProperty.all(0), // Adjust elevation if needed
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.white, // Border color
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
                              widget.data['subtopics'][index],
                              style: TextStyle(
                                fontSize: height * 0.03, // Adjust 'height' as per your layout
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(alignment: Alignment.topRight, child: (widget.data['subcomp'][index]==0)?Icon(Icons.open_in_new, color: white, size: height*0.035,):Icon(Icons.check_box, color: Colors.green, size: height*0.035,),),
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
