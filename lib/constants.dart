import 'package:codelingo/c++_containers.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Color Palette from the provided image
const Color white = Color(0xFFFFFFFF); // WHITE
const Color light = Color(0xFF676F8D); // Medium slate blue color
const Color bg = Color.fromRGBO(8, 8, 28, 1.0);//Color(0xFF424769); // Dark slate blue color
const Color dark = Color.fromRGBO(79 , 78, 171, 1); // Dark purple color
const Color highlight = Color(0xFFF9B17A); // Light orange color

String api_key="d6048ba95cmsh76e88f280345517p18b3e8jsn8128f50554ba";

final List<Map<String, dynamic>> java = [
  {"topic":"Introduction","completed":0},
  {"topic":"Variables","completed":1},
  {"topic":"Data Types","completed":0},
  {"topic":"Decision Making","completed":0},
  {"topic":"Loops","completed":0},
  {"topic":"Methods","completed":0},
];



void topicComplete(Map<String, dynamic> item){
  int a=1;

  for(var i in item['subcomp']){
    if(i!=1)
      {
        a=0;
        break;
      }
  }
  if(a==1){
    item['completed']=1;
  }
}
void subtopicComplete(Map<String, dynamic> item, int index){
  int a=0;
  for (var i in cpp){
    if(i==item){
      i['subcomp'][index]=1;
      print(i);
      break;
    }

  }

}

final List<Map<String, dynamic>> cpp = [
  {"topic":"Getting Started","completed":1,"subtopics":["Introduction","Basics","Sample Code"], "subcomp":[1,1,1], "content":[IntroductionSection(),BasicsSection(),sampleCode1()]},
  {"topic":"Variables and Constants","completed":0,"subtopics":["C++ Variables","Sample Code","Constants in C++"], "subcomp":[0,0,0], "content":[CVariablesSection(),sampleCode2(),ConstantsSection()]},
  {"topic":"Data Types","completed":0,"subtopics":["Data Types in C++","Types of Data Types in C++"], "subcomp":[0,0],"content":[DataTypesCpp(), DatatypeTypesCpp()]},
  {"topic":"Operators","completed":0,"subtopics":["Operators in C++","Arthematic Operators","Relational Operators","Logical Operators","Assignment Operators"],"subcomp":[0,0,0,0,0],"content":[OperatorsCpp(),ArthematicOperators(),RelationalOperators(),LogicalOperators(),AssignmentOperatorCpp()]},
  {"topic":"Decision Making","completed":0,"subtopics":["Decision Making in C++","Simple if statement in C++","if-else statement","Nested if-else statement","If-else-if ladder"],"subcomp":[0,0,0,0,0],"content":[DecisionMakingCpp(),IfCpp(),IfElseCpp(),NestedIfElseCpp(),IfElseIfLadder()]},
  {"topic":"Loops","completed":0,"subtopics":["Loops in C++",'For loop in C++','While loop in C++','do-while loop in C++'],"subcomp":[0,0,0,0],"content":[LoopsCpp(),ForLoopCpp(),WhileLoopCpp(),DoWhileLoopCpp()]},
];


