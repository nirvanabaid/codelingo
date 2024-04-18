import 'package:codelingo/Learner/C++/c++_menu.dart';
import 'package:codelingo/Learner/Java/java_menu.dart';
import 'package:codelingo/Learner/Python/python_menu.dart';
import 'package:flutter/material.dart';
import 'package:codelingo/constants.dart';
import 'package:google_fonts/google_fonts.dart';
final List<Map<String, dynamic>> items = [
  {"lang": "JAVA", "dir": JavaMenu(), "img": "https://github.com/nirvanabaid/images_codelingo/blob/main/java-svgrepo-com%20(2).png?raw=true"},
  {"lang": "C++", "dir": CppMenu(), "img": "https://github.com/nirvanabaid/images_codelingo/blob/main/cpp3-svgrepo-com.png?raw=true"},
  //{"lang": "Python", "dir": PythonMenu(), "img": "https://github.com/nirvanabaid/images_codelingo/blob/main/python-svgrepo-com.png?raw=true"},
];
class Learner_Home extends StatefulWidget {
  const Learner_Home({super.key});

  @override
  State<Learner_Home> createState() => _Learner_HomeState();
}

class _Learner_HomeState extends State<Learner_Home> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;


    return Scaffold(
        backgroundColor: bg,
      appBar: AppBar(
        title: Center(child: Text("CodeLingo", style: GoogleFonts.outfit(textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: height*0.03)))),
        backgroundColor: dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height*0.03,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10),

              width: width,
              decoration: BoxDecoration(
                color: Colors.white10, // Your existing background color
                borderRadius: BorderRadius.circular(10), // Adjust the radius value as needed for circular corners
                border: Border.all(
                  color: Colors.transparent, // Border color
                  width: 8, // Border width
                  style: BorderStyle.solid, // Border style
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(// Use Expanded to prevent the text from overflowing.
                    flex:2,
                    child: Text(
                      "Select the language you want to learn",
                      style: TextStyle(color: white, fontSize: height * 0.03, fontWeight: FontWeight.w700), // Ensure 'white' is defined in constants.dart
                    ),
                  ),
                  Flexible(flex: 1,
                      child: Image.network("https://github.com/nirvanabaid/images_codelingo/blob/main/coding.png?raw=true", fit: BoxFit.cover,height: height*0.2, )),

                ],
              ),
            ),

            SizedBox(
              height: height*0.03,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => items[index]['dir']));
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
                            width: width * 0.15, // Define the width of the container
                            height: height * 0.07, // Define the height of the container to match the image
                            child: Image.network(
                              items[index]['img'],
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

                          SizedBox(width: width * 0.05), // Space between image and text
                          Text(
                            items[index]['lang'],
                            style: TextStyle(
                              fontSize: height * 0.035, // Adjust 'height' as per your layout
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
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
