import 'package:codelingo/c++_containers.dart';
import 'package:flutter/material.dart';

// Color Palette from the provided image
const Color white = Color(0xFFFFFFFF); // WHITE
const Color light = Color(0xFF676F8D); // Medium slate blue color
const Color bg = Color.fromRGBO(8, 8, 28, 1.0);//Color(0xFF424769); // Dark slate blue color
const Color dark = Color.fromRGBO(79 , 78, 171, 1); // Dark purple color
const Color highlight = Color(0xFFF9B17A); // Light orange color

final List<Map<String, dynamic>> java = [
  {"topic":"Introduction","completed":0},
  {"topic":"Variables","completed":1},
  {"topic":"Data Types","completed":0},
  {"topic":"Decision Making","completed":0},
  {"topic":"Loops","completed":0},
  {"topic":"Methods","completed":0},
];



final List<Map<String, dynamic>> cpp = [
  {"topic":"Getting Started","completed":1,"subtopics":["Introduction","Basics","Sample Code"], "subcomp":[0,1,0], "content":[IntroductionSection(),BasicsSection(),sampleCode1()]},
  {"topic":"Variables and Constants","completed":1,"subtopics":["C++ Variables","Sample Code","Constants in C++"], "subcomp":[0,0,0], "content":[CVariablesSection(),sampleCode2(),ConstantsSection()]},
  {"topic":"Data Types","completed":0},
  {"topic":"Operators","completed":0},
  {"topic":"Decision Making","completed":0},
  {"topic":"Loops","completed":0},
];


