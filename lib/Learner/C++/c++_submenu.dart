import 'package:codelingo/Learner/content.dart';
import 'package:flutter/material.dart';

import '../../c++_containers.dart';
import '../../constants.dart';
final List<Map<String, dynamic>> items = cpp;

class CppSubmenu extends StatefulWidget {
  final int index;

  const CppSubmenu({super.key, required this.index});

  @override
  State<CppSubmenu> createState() => _CppSubmenuState();
}

class _CppSubmenuState extends State<CppSubmenu> with WidgetsBindingObserver {
  late Map<String, dynamic> data;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    data=cpp[widget.index];
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // Check if the state is resumed (when coming back to this screen)
    if (state == AppLifecycleState.resumed) {
      // Force rebuild the widget to reflect any changes
      setState(() {
        // This code will re-run the build method thus refreshing the screen
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    // Example of using the passed data. Make sure the key exists or provide a default value.
    String title = data['topic'] ?? 'Default Title';

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
              itemCount: data['subtopics'].length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Content(c: data['content'][index], subtopic: data['subtopics'][index], data: data, index: index,)));//data['content'][index]

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
                              data['subtopics'][index],
                              style: TextStyle(
                                fontSize: height * 0.03, // Adjust 'height' as per your layout
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(alignment: Alignment.topRight, child: (data['subcomp'][index]==0)?Icon(Icons.open_in_new, color: white, size: height*0.035,):Icon(Icons.check_box, color: Colors.green, size: height*0.035,),),
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
