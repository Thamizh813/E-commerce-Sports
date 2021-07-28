import 'package:bat/home/authentication.dart/fire_auth.dart';
import 'package:bat/home/authentication.dart/validator.dart';
import 'package:bat/main.dart';
import 'package:bat/signup.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  bool _isProcessing = false;
  bool _isObscure = true;

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Scaffold(
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
        body: FutureBuilder(
            future: _initializeFirebase(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return SingleChildScrollView(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 70),
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
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          textAlign: TextAlign.center,
                                          controller: _emailTextController,
                                          focusNode: _focusEmail,
                                          validator: (value) =>
                                              Validator.validateEmail(
                                            email: value,
                                          ),
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
                                                      BorderRadius.circular(
                                                          32))),
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
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          focusNode: _focusPassword,
                                          validator: (value) =>
                                              Validator.validatePassword(
                                            password: value,
                                          ),
                                          textAlign: TextAlign.center,
                                          controller: _passwordTextController,
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
                                                      BorderRadius.circular(
                                                          32))),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      if (_isProcessing)
                                        CircularProgressIndicator()
                                      else
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 18, left: 100),
                                          child: Material(
                                            elevation: 5,
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(32.0),
                                            child: MaterialButton(
                                              onPressed: () async {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  setState(() {
                                                    _isProcessing = true;
                                                  });

                                                  // User? user = await FireAuth
                                                  //     .signInUsingEmailPassword(
                                                  //   email: _emailTextController
                                                  //       .text,
                                                  //   password:
                                                  //       _passwordTextController
                                                  //           .text,
                                                  // );

                                                  setState(() {
                                                    _isProcessing = false;
                                                  });

                                                  // if (user != null) {
                                                  //   Navigator.of(context)
                                                  //       .pushReplacement(
                                                  //     MaterialPageRoute(
                                                  //       builder: (context) =>
                                                  //           HomePage(),
                                                  //     ),
                                                  //   );
                                                  // }
                                                  Navigator.of(context)
                                                      .pushReplacement(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  HomePage()));
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
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
