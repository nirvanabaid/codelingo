import 'package:flutter/material.dart';

import '../constants.dart';

class Content extends StatefulWidget {
  final Widget c;
  final String subtopic;
  
  const Content({super.key, required this.c, required this.subtopic});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Text(widget.subtopic, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height*0.03)),
        backgroundColor: dark,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            widget.c,
            SizedBox(
              height: height*0.0,
            ),
            ElevatedButton(
              onPressed: () {
                // Define what happens when the button is pressed
                print("Marked as Done");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green), // Button background color
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Circular corners
                    side: BorderSide(
                      color: Colors.white, // Border color
                      width: 5, // Border width
                      style: BorderStyle.solid, // Border style
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.03 / 2), // Adjust vertical padding
                child: Text(
                  "Marked as Done",
                  style: TextStyle(
                    color: dark, // Text color - make sure 'dark' is defined in your constants or replace with actual color
                    fontSize: height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: height*0.03,
            )
          ],
        )
      ),
    );
  }
}
