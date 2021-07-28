import 'package:bat/main.dart';
import 'package:bat/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  bool _isObscure = true;
  bool showSpinner = false;
  String email = '', password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Login to Buy',
          style: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: showSpinner
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text("BE THE FIRST TO KNOW",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign up for Nike emails to be the first to see inspiring content, news and exclusive offers.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 200),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 530,
                              width: 500,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70),
                                    child: SizedBox(
                                      child: Image.asset("assets/ddd.png"),
                                      height: 200,
                                      width: 350,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 150),
                                    child: Text(
                                      "Login",
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 17, right: 100),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        email = value;
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please enter Email";
                                        }
                                      },
                                      decoration: InputDecoration(
                                          hintText: "Enter your email",
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: Colors.black,
                                          ),
                                          hintStyle: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 17, right: 100),
                                    child: TextFormField(
                                      obscureText: _isObscure,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please enter Password";
                                        }
                                      },
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        password = value;
                                      },
                                      decoration: InputDecoration(
                                          hintText: "password",
                                          prefixIcon: Icon(
                                            Icons.lock,
                                            color: Colors.black,
                                          ),
                                          suffixIcon: IconButton(
                                              icon: Icon(_isObscure
                                                  ? Icons.visibility
                                                  : Icons.visibility_off),
                                              onPressed: () {
                                                setState(() {
                                                  _isObscure = !_isObscure;
                                                });
                                              }),
                                          hintStyle: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 18, left: 100),
                                    child: Material(
                                      elevation: 5,
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(32.0),
                                      child: MaterialButton(
                                        onPressed: () async {
                                          if (formkey.currentState!
                                              .validate()) {
                                            setState(() {
                                              showSpinner = true;
                                            });
                                            try {
                                              await _auth
                                                  .signInWithEmailAndPassword(
                                                      email: email,
                                                      password: password);

                                              await Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (contex) =>
                                                      HomePage(),
                                                ),
                                              );

                                              setState(() {
                                                showSpinner = false;
                                              });
                                            } on FirebaseAuthException catch (e) {
                                              showDialog(
                                                context: context,
                                                builder: (ctx) => AlertDialog(
                                                  title:
                                                      Text("Ops! Login Failed"),
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
                                              print(e);
                                            }
                                            setState(() {
                                              showSpinner = false;
                                            });
                                          }
                                        },
                                        minWidth: 200.0,
                                        height: 45.0,
                                        child: Text(
                                          "Sign in",
                                          style: GoogleFonts.poppins(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "OR",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            RegisterPage(),
                          ]),
                    ),
                  ]),
            ),
    );
  }
}
