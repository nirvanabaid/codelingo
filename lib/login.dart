import 'package:codelingo/Learner/learner_home.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  // Controllers to manage the text field values
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  InputDecoration _buildInputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold, // Make label text bold
        color: Colors.white, // Adjust label color if needed
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0), // Make border more visible
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0), // Keep consistent with enabledBorder
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 8, 28, 1.0),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: width*0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.03,),
              Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.055,
                  //fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                "Sign in to continue",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.015,
                  //fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                width: width * 0.9,
                height: height * 0.4,
                //padding: EdgeInsets.all(20), // Add padding for the content inside
                decoration: BoxDecoration(
                  color: Colors.transparent, // Use your existing background color
                  borderRadius: BorderRadius.circular(10), // Circular corners
                  border: Border.all(
                    color: Colors.transparent, // Border color
                    width: 4, // Border width
                    style: BorderStyle.solid, // Border style
                  ),
                ),
                child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  TextFormField(
                  controller: _usernameController,
                  style: TextStyle(
                    color: Colors.white, // Text color inside the TextFormField
                    fontWeight: FontWeight.bold, // Make text bold
                  ),
                  decoration: _buildInputDecoration('Enter username').copyWith(
                    filled: true, // this line is new
                    fillColor: Color.fromRGBO(35, 34, 63, 1.0), // Set the background color here
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20), // Provide spacing between fields
                TextFormField(
                  controller: _passwordController,
                  style: TextStyle(
                    color: Colors.white, // Text color inside the TextFormField
                    fontWeight: FontWeight.bold, // Make text bold
                  ),
                  decoration: _buildInputDecoration('Enter password').copyWith(
                    filled: true, // this line is new
                    fillColor: Color.fromRGBO(35, 34, 63, 1.0), // Set the background color here
                  ),
                  obscureText: true, // Hide password text
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },

                      ),
                      SizedBox(height: height*0.025), // Provide spacing before the button
                      SizedBox(
                        width: width,
                        child: ElevatedButton(
                          onPressed: () {
                            // Validate returns true if the form is valid, otherwise false.
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar.
                              if(_passwordController.text=="26661466" && _usernameController.text=="baidnirvana@gmail.com")
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Logged In')),

                                  );
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Learner_Home()));
                                }
                              else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('INCORRECT!!')),

                                );
                              }

                              // Add login logic here
                            }
                          },
                          child: Text('Sign In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: height*0.03),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(
                                129, 73, 225, 1.0))
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
