 import 'package:codelingo/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:highlight/languages/cpp.dart' as lang;
import 'package:highlight/languages/java.dart' as lang;
 import 'package:highlight/languages/python.dart' as lang;

import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;




 class Compiler extends StatefulWidget {
   final String input;
    String language;
   // If no input is given, 'Default Input Value' is used.
    Compiler({
     Key? key,
     this.input = '''#include <iostream> 
 using namespace std; 
 int main() { 
  cout<<"Hello World";
  return 0;
 }''',
     this.language = 'cpp', // default language
   }) : super(key: key);

   @override
   State<Compiler> createState() => _CompilerState();
 }


 class _CompilerState extends State<Compiler> {

   bool _isProcessing = false;
   int screen = 0;
   String output = "NO OUTPUT";
   late CodeController controller; // Declare it as late without initializing here.

   @override
   void initState() {
     super.initState();
     controller = CodeController( // Initialize it in initState.
       text: widget.input, // Assuming widget.input is properly passed a default value from the constructor.
       language: (widget.language=='cpp')?lang.cpp:(widget.language=='java')?lang.java:lang.python,
     );

   }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black, // Make sure this is a defined color variable.
                margin: EdgeInsets.only(left: width * 0.025, right: width * 0.025, top: height * 0.01),
                child: Row(
                  mainAxisSize: MainAxisSize.max,

                  children: [
                    Expanded( // Changed to Expanded, which is a Flexible with flex: 1
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            screen=0;
                          });
                          // Button action
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all((screen==0)?Colors.white10:Colors.transparent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: BorderSide(color: Colors.transparent, width: 0),
                            ),
                          ),
                        ),
                        child: Text(
                          "Editor",
                          style: TextStyle(color: Colors.white, fontSize: height * 0.03, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded( // Changed to Expanded, which is a Flexible with flex: 1
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            screen=1;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all((screen==1)?Colors.white10:Colors.transparent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: BorderSide(color: Colors.transparent, width: 0),
                            ),
                          ),
                        ),
                        child: Text(
                          "Result",
                          style: TextStyle(color: Colors.white, fontSize: height * 0.03, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: (screen==0)?Container(

                  margin: EdgeInsets.only(left: width*0.025,right: width*0.025, bottom: height*0.01),
                  child: CodeTheme(
                    data: CodeThemeData(styles: monokaiSublimeTheme),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            color: dark,
                            child: Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: Text("C++", style: TextStyle(color: Colors.white),),
                                  color: (widget.language=='cpp')?bg:Colors.transparent,
                                ),
                                onTap: (){
                                  setState(() {
                                    widget.language='cpp';
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: Text("Java", style: TextStyle(color: Colors.white),),
                                  color: (widget.language=='java')?bg:Colors.transparent,
                                ),
                                onTap: (){
                                  setState(() {
                                    widget.language='java';
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: Text("Python", style: TextStyle(color: Colors.white),),
                                  color: (widget.language=='python')?bg:Colors.transparent,
                                ),
                                onTap: (){
                                  setState(() {
                                    widget.language='python';
                                  });
                                },
                              ),
                            ],
                          ),),
                          CodeField(
                            minLines: 12,
                           wrap: true,
                            controller: controller,
                          ),
                        ],
                      ),
                    ),
                  ),
                ):
                Container(
                  margin: EdgeInsets.only(left: width*0.025,right: width*0.025, bottom: height*0.01),
                  padding: EdgeInsets.all(30),
                  width: width,
                  height: height*0.3,
                  color: Colors.black54,
                  child: SingleChildScrollView(child: Text(output, style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(
                width: width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(

                    onPressed: _isProcessing ? null : () async {
                      setState(() {
                        _isProcessing = true; // Start processing
                      });
                      try {
                        var response = await compileAndRunCode(controller.text, (widget.language=='cpp')?'cpp17':(widget.language=='java')?'java':'python3',);
                        print(response.statusCode);
                        if (response.statusCode == 200) {
                          print('Successful response: ${response.body}');
                          var jsonResponse = jsonDecode(response.body);
                          print(jsonResponse['output']);
                          setState(() {
                            output=jsonResponse['output'];
                          });
                        } else {
                          print('Server responded with status code: ${response.statusCode}');
                          output="Server responded with status code: ${response.statusCode}";
                        }
                      } catch (error) {
                        print('Error occurred during API call: $error');
                      } finally {
                        setState(() {
                          _isProcessing = false; // Stop processing
                          screen=1;

                        });
                      }
                    },
                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all(Colors.white10), // Button background color
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Circular corners
                          side: BorderSide(
                            color: Colors.transparent, // Border color
                            width: 5, // Border width
                            style: BorderStyle.solid, // Border style
                          ),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.03 / 2), // Adjust vertical padding
                      child: _isProcessing
                        ? CircularProgressIndicator(color: Colors.white)
                      :Text(
                        "Compile",
                        style: TextStyle(
                          color: Colors.white, // Text color - make sure 'dark' is defined in your constants or replace with actual color
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
    );
  }
}


 Future<http.Response> compileAndRunCode(String code, String lang) async {
   const url = 'https://online-code-compiler.p.rapidapi.com/v1/';
   var headers = {
     'Content-Type': 'application/json',
     'X-RapidAPI-Key': api_key,
     'X-RapidAPI-Host': 'online-code-compiler.p.rapidapi.com'
   };

   var body = jsonEncode({
     "language": lang,
     "version": "latest",
     //
     // "code": "#include <iostream> \n using namespace std;\n int sum(int a, int b){\n return a+b;\n} \n int main() { \n  cout<<\"Sum of x+y = \" << sum(5,10); }",
     "code": code,
     "input": null
   });

   try {
     final response = await http.post(
         Uri.parse(url),
         headers: headers,
         body: body
     );

     if (response.statusCode == 200) {
       //print('Code compiled successfully: ${response.body}');
     } else {
       // Handle non-200 responses
       print('Failed to compile code: ${response.statusCode}');
     }
     return response; // Return response even if it's not 200 for further handling
   } catch (e) {
     print('An error occurred: $e');
     // Handle the error by rethrowing or returning a custom response
     throw 'Failed to make API call: $e';
   }
 }
