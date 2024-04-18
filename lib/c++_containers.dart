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

