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
            style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.035,
                fontWeight: FontWeight.bold),
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
            style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.035,
                fontWeight: FontWeight.bold),
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
          Text("Basic Syntax and Structure",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/Basic%20Syntax.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            "Header File",
            style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.026,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
          Text(
            '''
The header files contain the definition of the functions and macros we are using in our program. They are defined on the top of the C++ program.

In line #1, we used the #include  <iostream> statement to tell the compiler to include an iostream header file library which stores the definition of the cin and cout methods that we have used for input and output. #include is a preprocessor directive using which we import header files.

Syntax:
#include <library_name>''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Text(
            "Namespace",
            style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.026,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
          Text(
            '''A namespace in C++ is used to provide a scope or a region where we define identifiers. It is used to avoid name conflicts between two identifiers as only unique names can be used as identifiers. 

In line #2, we have used the using namespace std statement for specifying that we will be the standard namespace where all the standard library functions are defined. 

Syntax: 
using namespace std; ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Text(
            "Main Function ",
            style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.026,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
          Text(
            '''Functions are basic building blocks of a C++ program that contains the instructions for performing some specific task. Apart from the instructions present in its body, a function definition also contains information about its return type and parameters. To know more about C++ functions, please refer to the article Functions in C++. 

In line #3, we defined the main function as int main(). The main function is the most important part of any C++ program. The program execution always starts from the main function. All the other functions are called from the main function. In C++, the main function is required to return some value indicating the execution status. ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            width: width,
            child: ElevatedButton(
              onPressed: () {
                // Define what happens when the button is pressed
                print("Marked as Done");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Colors.white), // Button background color
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Circular corners
                    side: BorderSide(
                      color: Colors.transparent, // Border color
                      width: 7, // Border width
                      style: BorderStyle.solid, // Border style
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.03 / 2), // Adjust vertical padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.15, // Define the width of the container
                      height: height *
                          0.07, // Define the height of the container to match the image
                      child: Image.network(
                        "https://github.com/nirvanabaid/images_codelingo/blob/main/youtube-color-svgrepo-com.png?raw=true",
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return SizedBox(
                            width: width * 0.15, // Match the container width
                            height: height * 0.07, // Match the container height
                            child: Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Flexible(
                      child: Text(
                        "How to print 'Hello World' using C++",
                        style: TextStyle(
                          color:
                              dark, // Text color - make sure 'dark' is defined in your constants or replace with actual color
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
            margin: EdgeInsets.only(top: height * 0.015),
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
          Text("Sample Code",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''#include <iostream>  
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
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class CVariablesSection extends StatelessWidget {
  const CVariablesSection({super.key});

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
          Text("C++ Variables",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''Variables are containers for storing data values. In C++, there are different types of variables (defined with different keywords), for example: \n
    #int- stores integers (whole numbers), without decimals, such as 123 or -123 
    #double - stores floating point numbers, with decimals, such as 19.99 or -19.99 
    #char - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes 
    #string - stores text, such as "Hello World". String values are surrounded by double quotes 
    #bool - stores values with two states: true or false \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://raw.githubusercontent.com/nirvanabaid/images_codelingo/main/variable.png",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text("\n\n\nVariable Declaration in    C++ ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''The declaration of variable informs the compiler that there is a variable with the specified type and name present. So, when the compiler receives these signals of the valid declaration it continues with further compilation without needing more information about the variable. 

However, the declaration of variables names, etc. are only useful during compilation. This is why it is important that all variables in C++ must be declared prior to use. 

After the program is linked, the compiler requires an actual variable definition. Also, when using multiple files and defining your variable in one of the files that will be accessible when the program is linked, a variable declaration is useful.  \n\n\n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class sampleCode2 extends StatelessWidget {
  const sampleCode2({super.key});
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
          Text("Sample Code",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''
#include <iostream> 
using namespace std;
int main() { 
int age = 23;
double height = 1.74; 
string name = "Paul"; 
cout << "My name is " << name << ", and I am " << age << " years old." << endl; 
cout << "I am " << height << " meters tall." << endl; 
return 0; 
}  
}''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class ConstantsSection extends StatelessWidget {
  const ConstantsSection({super.key});

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
          Text("Constants in C++ ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''The constants in C++ are the read-only variables whose values cannot be modified once they are declared in the C++ program. The type of constant can be an integer constant, a floating pointer constant, a string constant, or a character constant. In C++ language, the const keyword is used to define the constants. 
In this article, we will discuss about the constants in C++ programming, ways to define constants in C++, types of constants in C++, their properties and the difference between literals and constants. \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("How to Define Constant in C++?  ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''We define a constant in C++ language using the const keyword. Also known as a const type qualifier, the const keyword is placed at the start of the variable declaration to declare that variable as a constant.  \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("Syntax to Define Constant  ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            ''' const data_type var_name = value;   \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("Examples of Constants in C++ ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/const.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/Screenshot%202024-04-18%20164231.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class DataTypesCpp extends StatelessWidget {
  const DataTypesCpp({super.key});

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
          Text("Sample Code",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''All variables use data type during declaration to restrict the type of data to be stored. Therefore, we can say that data types are used to tell the variables the type of data they can store. Whenever a variable is defined in C++, the compiler allocates some memory for that variable based on the data type with which it is declared. Every data type requires a different amount of memory.  

C++ supports a wide variety of data types, and the programmer can select the data type appropriate to the needs of the application. Data types specify the size and types of values to be stored. However, storage representation and machine instructions to manipulate each data type differ from machine to machine, although C++ instructions are identical on all machines. 
''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/datatyped.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class DatatypeTypesCpp extends StatelessWidget {
  const DatatypeTypesCpp({super.key});

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
          Text("Data Types in C++ are Mainly Divided into 3 Types: ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.040,
                  fontWeight: FontWeight.bold)),
          Text(
            '''A. Primitive Data Types: These data types are built-in or predefined data types and can be used directly by the user to declare variables. example: int, char, float, bool, etc. Primitive data types available in C++ are:  
a. Integer 
b. Character 
c. Boolean 
d. Floating Point 
e. Double Floating Point 
f. Valueless or Void 
g. Wide Character
\n B. Derived Data Types:  Derived data types that are derived from the primitive or built-in datatypes are referred to as Derived Data Types. These can be of four types namely: 

a. Function 
b. Array 
c. Pointer
d. Reference 
\n
C. Abstract or User-Defined Data Types: Abstract or User-Defined data types are defined by the user itself. Like, defining a class in C++ or a structure. C++ provides the following user-defined datatypes:  

a. Class 
b. Structure  
c. Union 
d. Enumeration 
e. Typedef defined Datatype 

Examples: 

int m , x[50];      

cout<<sizeof(m); //returns 4 which is the number of bytes occupied by the integer variable “m”.   

cout<<sizeof(x); //returns 200 which is the number of bytes occupied by the integer array variable “x”.      

The size of variables might be different from those shown in the above table, depending on the compiler and the computer you are using. 

 Here is how to declare specific data types:  

int myNum = 5;               // Integer (whole number) 
float myFloatNum = 5.99;     // Floating point number 
double myDoubleNum = 9.98;   // Floating point number 
char myLetter = 'D';         // Character 
bool myBoolean = true;       // Boolean 
string myText = "Hello";     // String 
 ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),

          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class OperatorsCpp extends StatelessWidget {
  const OperatorsCpp({super.key});
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
          Text("Data Types in C++ are Mainly Divided into 3 Types: ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            ''' An operator is a symbol that operates on a value to perform specific mathematical or logical computations. They form the foundation of any programming language. In C++, we have built-in operators to provide the required functionality. An operator operates the operands. For example,  
int c = a + b;  

Here, ‘+’ is the addition operator. ‘a’ and ‘b’ are the operands that are being ‘added’. 
 

Operators in C++ can be classified into 6 types: 

a. Arithmetic Operators 
b. Relational Operators 
c. Logical Operators 
d. Bitwise Operators 
e. Assignment Operators
f. Ternary or Conditional Operators 
  
 ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),

          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class ArthematicOperators extends StatelessWidget {
  const ArthematicOperators({super.key});
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
          Text("Arithmetic Operators ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''These operators are used to perform arithmetic or mathematical operations on the operands. For example, ‘+’ is used for addition, ‘-‘ is used for subtraction ‘*’ is used for multiplication, etc.  \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("Arithmetic Operators can be classified into 2 Types: \n\nA) Unary Operators:",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold)),
          Text(
            '''These operators operate or work with a single operand. For example: Increment(++) and Decrement(–) Operators.''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/unary.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text("\nB) Binary Operators:",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold)),

          Text(
            '''These operators operate or work with two operands. For example: Addition(+), Subtraction(-), etc.    \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/binary.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            '''\nNote: The Modulo operator(%) operator should only be used with integers.    \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("Here is a CPP Program to demonstrate the Binary Operators:  ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.024,
                  fontWeight: FontWeight.bold)),
          Text(
            '''\n#include <iostream> 
using namespace std; 
int main() 
{ 
    int a = 8, b = 3; 
    // Addition operator 
    cout << "a + b = " << (a + b) << endl; 
    // Subtraction operator 
    cout << "a - b = " << (a - b) << endl; 
    // Multiplication operator 
    cout << "a * b = " << (a * b) << endl; 
    // Division operator 
    cout << "a / b = " << (a / b) << endl; 
    // Modulo operator 
    cout << "a % b = " << (a % b) << endl; 
    return 0; 
}     \n
Output: ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/opbin.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class RelationalOperators extends StatelessWidget {
  const RelationalOperators({super.key});
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
          Text("Relational Operators ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''These operators are used for the comparison of the values of two operands. For example, ‘>’ checks if one operand is greater than the other operand or not, etc. The result returns a Boolean value, i.e., true or false.  \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),

          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://i.ytimg.com/vi/3ZFDQcgLD04/maxresdefault.jpg",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),


          Text(
            '''Here is a CPP Program to demonstrate the Relational Operators: 
#include <iostream> 
using namespace std; 
int main() 
{ 
    int a = 6, b = 4; 
    // Equal to operator 
    
    cout << "a == b is " << (a == b) << endl; 
    // Greater than operator 
    
    cout << "a > b is " << (a > b) << endl; 
    // Greater than or Equal to operator 
    
    cout << "a >= b is " << (a >= b) << endl; 
    // Lesser than operator 
    
    cout << "a < b is " << (a < b) << endl; 
    // Lesser than or Equal to operator 
    
    cout << "a <= b is " << (a <= b) << endl; 
    // true 
    
    cout << "a != b is " << (a != b) << endl; 
    return 0; 
}    \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/binary.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            '''\nNote: The Modulo operator(%) operator should only be used with integers.    \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("Here is a CPP Program to demonstrate the Binary Operators:  ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.024,
                  fontWeight: FontWeight.bold)),
          Text(
            '''\n#include <iostream> 
using namespace std; 
int main() 
{ 
    int a = 8, b = 3; 
    // Addition operator 
    cout << "a + b = " << (a + b) << endl; 
    // Subtraction operator 
    cout << "a - b = " << (a - b) << endl; 
    // Multiplication operator 
    cout << "a * b = " << (a * b) << endl; 
    // Division operator 
    cout << "a / b = " << (a / b) << endl; 
    // Modulo operator 
    cout << "a % b = " << (a % b) << endl; 
    return 0; 
}     \n
Output: ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/oprelans.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class LogicalOperators extends StatelessWidget {
  const LogicalOperators({super.key});
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
          Text("Logical Operators ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''These operators are used to combine two or more conditions or constraints or to complement the evaluation of the original condition in consideration. The result returns a Boolean value, i.e., true or false.   \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),

          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://miro.medium.com/v2/resize:fit:499/1*9w4mE4Wf-JWii_E9aU8AeQ.jpeg",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),

          Text(
            '''\nBefore we can take a closer look at where logical operators often show up in code, we’ll first need to understand the syntax behind them. There are a total of three logical operators:   \n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("The ”and” (&&) Operator: ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold)),
          Text(
            '''\nThe logical “and” operator looks at the operands on either of its sides and returns “true” only if both statements are true. If even just one of the two statements is false, the logical “and” will return false.

Below is a practical example of how we can use the && operator in C++:

#include <iostream>
using namespace std;
 
int main()
{
    cout << "Enter a number: ";
    int num {};
    cin >> num;
 
    if (num > 0 && num <= 10)
        cout << "Your number is between 1 and 10";
    else
        cout << "Your number is not between 1 and 10";
    return 0;
}
Above, we ask the user to provide a number. Our logical “and” operator checks to see if the number is greater than 0 and also less than or equal to 10. If both of these statements are true, the number must fall between 1 and 10, and we can output that this is the case.

If a number of 0 or less, or a number greater than 10 is entered, the program will declare the result “false,” negating the if statement and instead outputting that the number is not between 1 and 10.
  \n''',

            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("The ”or” (||) Operator: ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold)),
          Text(
            '''
The logical “or” operator works similarly to the ”and” operator above. The difference is that “or” will return “true” if either the left or the right operand is true. The || operator will only return a false value if both operands are false.

Consider a scenario where picking one of two lucky numbers between 1 and 10 in a game will win us a prize. For this example, we’ll set the lucky numbers to four and eight. We’ll need to create a program in C++ to check for winners:

#include <iostream>
using namespace std;

int main() {
    
 cout << "Enter a number: ";
    int num {};
    cin >> num;
    if(num == 4 || num == 8)
        cout << "You chose a winning number!";
    else
        cout << "Sorry, better luck next time.";
    return 0;
}
When a user comes to play our game, they’re asked to input a number. If they correctly guess either four or eight, they’re notified that they chose a winning number. If the user inputs any other integer value, they’ll have to try again some other time.

\n''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("The ”not” (!) Operator: ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold)),
          Text(
            '''\n
The “not” logical operator is used to convert a value from true to false, or from false to true. Similarly, if an operand evaluates to true, a logical “not” would cause it to evaluate to false. If an operand evaluates to false, its logical “not” equivalent would be true.

The following example reveals one possible use for the logical “not” operator:

#include <iostream>
using namespace std;
 
int main()
{
    cout << "Enter a number: ";
    int x {};
    cin >> x;
    
    if (!x == 0)
        cout << "You typed a number other than 0";
    else
        cout << "You typed zero";
 
    return 0;
}
This program is set up to return true any time the variable x is not zero. The if statement checks to see if x is equal to 0, which will return false for every number but zero. The ! operator flips the result from false to true, causing the program to output the true result of the if statement:

Enter a number: 786
You typed a number other than 0\n
When using a logical “not” operator, it’s important to remember that it has a very high level of precedence in C++. \nThe logical “not” executes before comparative operators like equals (==) and greater than (>). When coding with a logical “not”, the programmer must ensure that the program is set up to execute operators in the correct order.
}    \n''',

            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),

          
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class AssignmentOperatorCpp extends StatelessWidget {
  const AssignmentOperatorCpp({super.key});

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
          Text("Assignment Operators ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            ''' These operators are used to assign value to a variable. The left side operand of the assignment operator is a variable and the right-side operand of the assignment operator is a value. The value on the right side must be of the same data type as the variable on the left side otherwise the compiler will raise an error. 
  
 ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/assignmentoperator.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text("\n\nHere is a CPP Program to demonstrate the Assignment Operators:  ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.023,
                  fontWeight: FontWeight.bold)),
          Text(
            ''' #include <iostream> 

using namespace std; 

int main() 

{ 
  int a = 6, b = 4; 
  // Assignment Operator 
  cout << "a = " << a << endl; 
  // Add and Assignment Operator 
  cout << "a += b is " << (a += b) << endl; 
  // Subtract and Assignment Operator 
  cout << "a -= b is " << (a -= b) << endl; 
  // Multiply and Assignment Operator 
  cout << "a *= b is " << (a *= b) << endl; 
  // Divide and Assignment Operator 
  cout << "a /= b is " << (a /= b) << endl; 
  return 0; 
} 
 ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/opequal.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.2, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class DecisionMakingCpp extends StatelessWidget {
  const DecisionMakingCpp({super.key});

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
          Text("Control Flow",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''The conditional statements (also known as decision control structures) such as if, if else, switch, etc. are used for decision-making purposes in C++ programs. 

They are also known as Decision-Making Statements and are used to evaluate one or more conditions and make the decision whether to execute a set of statements or not. These decision-making statements in programming languages decide the direction of the flow of program execution. ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Text("\nNeed of Conditional Statements ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold)),
          Text(
            '''There come situations in real life when we need to make some decisions and based on these decisions, we decide what should we do next. Similar situations arise in programming also where we need to make some decisions and based on these decisions we will execute the next block of code. For example, in C++ if x occurs then execute y else execute z. There can also be multiple conditions like in C++ if x occurs then execute p, else if condition y occurs execute q, else execute r. This condition of C++ else-if is one of the many ways of importing multiple conditions.  
            
             
Following are the decision-making statements available in C++:  

1.if Statement 
2.if-else Statement 
3.Nested if Statement 
4.if-else-if Ladder 
5.switch Statement 
 ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/decision.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class IfCpp extends StatelessWidget {
  const IfCpp({super.key});

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
          Text("Simple if",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''The if statement is the most simple decision-making statement. It is used to decide whether a certain statement or block of statements will be executed or not i.e if a certain condition is true then a block of statements is executed otherwise not.  \n ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),


          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/Screenshot%202024-04-19%20015627.png?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),

          Text(
            '''\nHere, the condition after evaluation will be either true or false. C++ if statement accepts boolean values – if the value is true then it will execute the block of statements below it otherwise not. If we do not provide the curly braces ‘{‘ and ‘}’ after if(condition) then by default if statement will consider the first immediately below statement to be inside its block.  \n ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class IfElseCpp extends StatelessWidget {
  const IfElseCpp({super.key});

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
          Text("if-else",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''The if statement alone tells us that if a condition is true it will execute a block of statements and if the condition is false it won’t. But what if we want to do something else when the condition is false? Here comes the C ++ else statement. We can use the else statement with the if statement to execute a block of code when the condition is false. The if-else statement consists of two blocks, one for false expression and one for true expression.  \n ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),


          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://t4tutorials.com/wp-content/uploads/2017/02/program-to-find-the-odd-even-number.png",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class NestedIfElseCpp extends StatelessWidget {
  const NestedIfElseCpp({super.key});

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
          Text("Nested if-else",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''A nested if in C++ is an if statement that is the target of another if statement. Nested if statements mean an if statement inside another if statement. Yes, C++ allow us to nested if statements within if statements, i.e, we can place an if statement inside another if statement.  \n
            \nSyntax: ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),


          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://dotnettutorials.net/wp-content/uploads/2021/07/word-image-191.png",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class IfElseIfLadder extends StatelessWidget {
  const IfElseIfLadder({super.key});

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
          Text("Nested if-else",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''The if else if statements are used when the user has to decide among multiple options. The C++ if statements are executed from the top down. As soon as one of the conditions controlling the if is true, the statement associated with that if is executed, and the rest of the C++ else-if ladder is bypassed. If none of the conditions is true, then the final else statement will be executed. if-else-if ladder is similar to the switch statement. \nSyntax: ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),


          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://inprogrammer.com/wp-content/uploads/2022/08/image-39.png",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class LoopsCpp extends StatelessWidget {
  const LoopsCpp({super.key});

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
          Text("Loops in C++",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''In Programming, sometimes there is a need to perform some operation more than once or (say) n number of times. Loops come into use when we need to repeatedly execute a block of statements.  

 For example: Suppose we want to print “Hello World” 10 times. This can be done in two ways as shown below:  

Manual Method (Iterative Method) 

Manually we have to write cout for the C++ statement 10 times. Let’s say you have to write it 20 times (it would surely take more time to write 20 statements) now imagine you have to write it 100 times, it would be really hectic to re-write the same statement again and again. So, here loops have their role.  
Here is a C++ program to demonstrate the need of loops: 

#include <iostream> 
using namespace std; 
int main() 
{     
    cout << "Hello World"<<endl; 
    cout << "Hello World"<<endl; 
    cout << "Hello World"<<endl; 
    cout << "Hello World"<<endl; 
    cout << "Hello World"<<endl; 
    return 0; 
} 

Output:
Hello World
Hello World
Hello World
Hello World
Hello World

Using Loops,
In Loop, the statement needs to be written only once and the loop will be executed 10 times as shown below.  In computer programming, a loop is a sequence of instructions that is repeated until a certain condition is reached.  

 

There are mainly two types of loops:   

1.Entry Controlled loops: In this type of loop, the test condition is tested before entering the loop body. For Loop and While Loop is entry-controlled loops. 

2.Exit Controlled Loops: In this type of loop the test condition is tested or evaluated at the end of the loop body. Therefore, the loop body will execute at least once, irrespective of whether the test condition is true or false. the do-while loop is exit controlled loop. 
 
 ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://github.com/nirvanabaid/images_codelingo/blob/main/loops.jpg?raw=true",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),




          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class ForLoopCpp extends StatelessWidget {
  const ForLoopCpp({super.key});

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
          Text("For loop in C++",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''A For loop is a repetition control structure that allows us to write a loop that is executed a specific number of times. The loop enables us to perform n number of steps together in one line.  
 \nSyntax: ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://media.geeksforgeeks.org/wp-content/uploads/20231221155254/cpp-for-loop.png",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            '''Explanation of the Syntax: 

Initialization statement: This statement gets executed only once, at the beginning of the for loop. You can enter a declaration of multiple variables of one type, such as int x=0, a=1, b=2. These variables are only valid in the scope of the loop. Variable defined before the loop with the same name are hidden during execution of the loop. 

Condition: This statement gets evaluated ahead of each execution of the loop body, and abort the execution if the given condition get false. 

Updation: This statement gets executed after the loop body, ahead of the next condition evaluated, unless the for loop is aborted in the body (by break, goto, return or an exception being thrown.) 


Here is a C++ program to demonstrate for loop: 

 

#include <iostream> 
using namespace std; 
int main() 
{ 
  for (int i = 1; i <= 5; i++) 
  {
      cout << "Hello World"<<endl; 
  } 
  return 0; 
} 

Output:
Hello World
Hello World
Hello World
Hello World
Hello World

  ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),



          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}

class WhileLoopCpp extends StatelessWidget {
  const WhileLoopCpp({super.key});

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
          Text("While Loop in C++",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''While studying for loop we have seen that the number of iterations is known beforehand, i.e. the number of times the loop body is needed to be executed is known to us. while loops are used in situations where we do not know the exact number of iterations of the loop beforehand. The loop execution is terminated on the basis of the test conditions. 
We have already stated that a loop mainly consists of three statements – initialization expression, test expression, and update expression. The syntax of the three loops – For, while, and do while mainly differs in the placement of these three statements.  

\nSyntax:   ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://media.geeksforgeeks.org/wp-content/uploads/20191118170432/While-Loop-GeeksforGeeks1.jpg",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            '''

Here is a C++ program to demonstrate while loop: 

#include <iostream> 
using namespace std; 
int main() 
{ 
    // initialization expression 
    int i = 1; 
    
    // test expression 
    while (i < 6) { 
        cout << "Hello World"<<endl; 
        // update expression 
        i++; 
    } 
    return 0; 
} 

Output:
Hello World
Hello World
Hello World
Hello World
Hello World

  ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),



          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}


class DoWhileLoopCpp extends StatelessWidget {
  const DoWhileLoopCpp({super.key});

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
          Text("Do-While Loop in C++",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold)),
          Text(
            '''In Do-while loops also the loop execution is terminated on the basis of test conditions. The main difference between a do-while loop and the while loop is in the do-while loop the condition is tested at the end of the loop body, i.e do-while loop is exit controlled whereas the other two loops are entry-controlled loops.  
            \nSyntax of do-while loop:  ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: width * 1, // Define the width of the container
            height: height *
                0.27, // Define the height of the container to match the image
            child: Image.network(
              "https://media.geeksforgeeks.org/wp-content/uploads/20191118154342/do-while-Loop-GeeksforGeeks2.jpg",
              fit: BoxFit.fitWidth,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  width: width * 0.45, // Match the container width
                  height: height * 0.27, // Match the container height
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            '''

Here is a C++ program to demonstrate do-while loop: 
#include <iostream> 

using namespace std; 

int main() 

{ 

int i = 2; // Initialization expression 

do { 
    // loop body 
    cout << "Hello World"<<endl; 
    // update expression 
    i++; 
    } while (i < 1); // test expression 
    return 0; 
} 

Output:
Hello World
Hello World
Hello World
Hello World
Hello World

  ''',
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
            textAlign: TextAlign.justify,
          ),



          Container(
            margin: EdgeInsets.only(top: height * 0.015),
            width: width,
            color: Colors.white,
            height: 1,
          ),
        ],
      ),
    );
  }
}