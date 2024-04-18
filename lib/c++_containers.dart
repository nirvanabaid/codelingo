import 'package:flutter/material.dart';

import 'constants.dart';

class IntroductionSection extends StatelessWidget {
  IntroductionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Capture the MediaQuery data
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // Use these height and width variables within your Container
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About C++",
            style: TextStyle(color: Colors.white, fontSize: height * 0.035, fontWeight: FontWeight.bold),
          ),
          Text(
            "C++ is the most used and most popular programming language developed by Bjarne Stroustrup. C++ is a high-level and object-oriented programming language. This language allows developers to write clean and efficient code for large applications and software development, game development, and operating system programming. It is an expansion of the C programming language to include Object Oriented Programming (OOPs) and is used to develop programs for computers. This C++ Tutorial will cover all the basic topics of C++ and will help you become well-acquainted with the language. ",
            style: TextStyle(color: Colors.white, fontSize: height * 0.023),
            textAlign: TextAlign.justify,
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
          SizedBox(height: height * 0.05),
          Text(
            "Should you learn C++?",
            style: TextStyle(color: Colors.white, fontSize: height * 0.035, fontWeight: FontWeight.bold),
          ),
          Text(
            "C++ is the most used and most popular programming language developed by Bjarne Stroustrup. C++ is a high-level and object-oriented programming language. This language allows developers to write clean and efficient code for large applications and software development, game development, and operating system programming. It is an expansion of the C programming language to include Object Oriented Programming (OOPs) and is used to develop programs for computers. This C++ Tutorial will cover all the basic topics of C++ and will help you become well-acquainted with the language. ",
            style: TextStyle(color: Colors.white, fontSize: height * 0.023),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class BasicsSection extends StatelessWidget {
  const BasicsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Basic Syntax and Structure", style: TextStyle(color: Colors.white, fontSize: height*0.035, fontWeight: FontWeight.bold)),

          Container(
            width: width * 1, // Define the width of the container
            height: height * 0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/Basic%20Syntax.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),

          Text("Header File",style: TextStyle(color: Colors.white,fontSize: height*0.026,fontWeight: FontWeight.bold ), textAlign: TextAlign.justify,
          ),
          Text('''
The header files contain the definition of the functions and macros we are using in our program. They are defined on the top of the C++ program.

In line #1, we used the #include  <iostream> statement to tell the compiler to include an iostream header file library which stores the definition of the cin and cout methods that we have used for input and output. #include is a preprocessor directive using which we import header files.

Syntax:
#include <library_name>''',
            style: TextStyle(color: Colors.white,fontSize: height*0.023, ), textAlign: TextAlign.justify,
          ),
          SizedBox(height: height*0.05,),
          Text("Namespace",style: TextStyle(color: Colors.white,fontSize: height*0.026,fontWeight: FontWeight.bold ), textAlign: TextAlign.justify,
          ),
          Text('''A namespace in C++ is used to provide a scope or a region where we define identifiers. It is used to avoid name conflicts between two identifiers as only unique names can be used as identifiers. 

In line #2, we have used the using namespace std statement for specifying that we will be the standard namespace where all the standard library functions are defined. 

Syntax: 
using namespace std; ''',
            style: TextStyle(color: Colors.white,fontSize: height*0.023, ), textAlign: TextAlign.justify,
          ),
          SizedBox(height: height*0.05,),
          Text("Main Function ",style: TextStyle(color: Colors.white,fontSize: height*0.026,fontWeight: FontWeight.bold ), textAlign: TextAlign.justify,
          ),
          Text('''Functions are basic building blocks of a C++ program that contains the instructions for performing some specific task. Apart from the instructions present in its body, a function definition also contains information about its return type and parameters. To know more about C++ functions, please refer to the article Functions in C++. 

In line #3, we defined the main function as int main(). The main function is the most important part of any C++ program. The program execution always starts from the main function. All the other functions are called from the main function. In C++, the main function is required to return some value indicating the execution status. ''',
            style: TextStyle(color: Colors.white,fontSize: height*0.023, ), textAlign: TextAlign.justify,
          ),
          SizedBox(height: height*0.01,),
          Container(
            width: width,

            child: ElevatedButton(
              onPressed: () {
                // Define what happens when the button is pressed
                print("Marked as Done");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white), // Button background color
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Circular corners
                    side: BorderSide(
                      color: highlight, // Border color
                      width: 7, // Border width
                      style: BorderStyle.solid, // Border style
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.03 / 2), // Adjust vertical padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.15, // Define the width of the container
                      height: height * 0.07, // Define the height of the container to match the image
                      child: Image.network(
                        "https://github.com/nirvanabaid/images_codelingo/blob/main/youtube-color-svgrepo-com.png?raw=true",
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return SizedBox(
                            width: width * 0.15, // Match the container width
                            height: height * 0.07, // Match the container height
                            child: Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: width*0.05,),
                    Flexible(
                      child: Text(
                        "How to print 'Hello World' using C++",
                        style: TextStyle(
                          color: dark, // Text color - make sure 'dark' is defined in your constants or replace with actual color
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height*0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),

        ],
      ),
    );
  }
}

class sampleCode1 extends StatelessWidget {
  const sampleCode1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sample Code", style: TextStyle(color: Colors.white, fontSize: height*0.035, fontWeight: FontWeight.bold)),




          Text('''#include <iostream>  
// Standard Namespace  
using namespace std;  
// Main Function  
int main()  
{  
// Body of the Function  
// Declaration of Variable  
int num1 = 24;  
int num2 = 34;  
int result = num1 + num2;  
// Output  
cout << result << endl;  
// Return Statement  
return 0;  
}''',
            style: TextStyle(color: Colors.white,fontSize: height*0.023, ), textAlign: TextAlign.justify,
          ),

          Container(
            margin: EdgeInsets.only(top: height*0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),

        ],
      ),
    );
  }
}

