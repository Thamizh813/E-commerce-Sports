import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formkey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;
  bool isObscure = true;
  bool isObscure1 = true;
  bool showProgress = false;
  String username = '', email = '', password = '', confirmpassword = '';

  @override
  Widget build(BuildContext context) {
    return showProgress
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            height: 600,
            width: 400,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 30.0),
                    child: Text(
                      "Welcome to our Shoppy",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Register",
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      // onChanged: (value) {
                      //   username = value;
                      // },
                      decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter Email";
                        }
                      },
                      onChanged: (value) {
                        email = value.toString().trim();
                      },
                      decoration: InputDecoration(
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      obscureText: isObscure,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter Password";
                        }
                      },
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(
                              icon: Icon(isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              }),
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      obscureText: isObscure1,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      // onChanged: (value) {
                      //   confirmpassword = value;
                      // },
                      decoration: InputDecoration(
                          hintText: "confirm Password",
                          suffixIcon: IconButton(
                              icon: Icon(isObscure1
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  isObscure1 = !isObscure1;
                                });
                              }),
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Material(
                    elevation: 5,
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(32.0),
                    child: MaterialButton(
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          setState(() {
                            showProgress = true;
                          });

                          try {
                            await _auth.createUserWithEmailAndPassword(
                                email: email, password: password);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Sucessfully Register.You Can Login Now'),
                                ),
                                duration: Duration(seconds: 5),
                              ),
                            );
                            Navigator.of(context).pop();

                            setState(() {
                              showProgress = false;
                            });
                          } on FirebaseAuthException catch (e) {
                            showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: Text(' Ops! Registration Failed'),
                                content: Text('${e.message}'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: Text('Okay'),
                                  )
                                ],
                              ),
                            );
                          }
                          setState(() {
                            showProgress = false;
                          });
                        }
                      },
                      minWidth: 200.0,
                      height: 45.0,
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
  }
}
