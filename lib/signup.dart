import 'package:bat/home/authentication.dart/fire_auth.dart';
import 'package:bat/home/authentication.dart/validator.dart';

import 'package:bat/withoutssignin/home.dart';
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
  final _registerFormKey = GlobalKey<FormState>();

  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmpassword = TextEditingController();
  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final _focusConfirmpassword = FocusNode();
  bool isObscure = true;
  bool isObscure1 = true;

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusName.unfocus();
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Container(
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  controller: _nameTextController,
                  focusNode: _focusName,
                  validator: (value) => Validator.validateName(
                    name: value,
                  ),
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
                  focusNode: _focusEmail,
                  validator: (value) => Validator.validateEmail(
                    email: value,
                  ),
                  controller: _emailTextController,
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
                  focusNode: _focusPassword,
                  controller: _passwordTextController,
                  validator: (value) => Validator.validatePassword(
                    password: value,
                  ),
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
                child: TextFormField(
                  obscureText: isObscure1,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  controller: _confirmpassword,
                  focusNode: _focusConfirmpassword,
                  validator: (value) => Validator.validateconfirmPassword(
                    confirmpassword: value,
                  ),
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
              _isProcessing
                  ? CircularProgressIndicator()
                  : Material(
                      elevation: 5,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(32.0),
                      child: MaterialButton(
                        onPressed: () async {
                          setState(() {
                            _isProcessing = true;
                          });

                          if (_registerFormKey.currentState!.validate()) {
                            User? user =
                                await FireAuth.registerUsingEmailPassword(
                              name: _nameTextController.text,
                              email: _emailTextController.text,
                              password: _passwordTextController.text,
                              confirmpassword: _confirmpassword.text,
                            );

                            setState(() {
                              _isProcessing = false;
                            });

                            if (user != null) {
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => HomePage1(),
                                ),
                                ModalRoute.withName('/'),
                              );
                            }
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
      ),
    );
  }
}
