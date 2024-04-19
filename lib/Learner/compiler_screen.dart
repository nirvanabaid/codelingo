import 'package:codelingo/compiler.dart';
import 'package:codelingo/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CompilerScreen extends StatefulWidget {
  const CompilerScreen({super.key});

  @override
  State<CompilerScreen> createState() => _CompilerScreenState();
}

class _CompilerScreenState extends State<CompilerScreen> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return SafeArea(child:
    Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
    title: Center(child: Text("CodeLingo", style: GoogleFonts.outfit(textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: height*0.03)))),
    backgroundColor: dark,
    ),
      backgroundColor: bg,
        body: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Compiler(input: "print(\"Hello World\")",language: 'python',),
        )
    ),
    );
  }
}
