import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

void main() => {
      runApp(LoginPage()),
    };

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: ModalProgressHUD(
        color: Colors.black,
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  child: Image.asset("lib/assets/Nikes.jpg"),
                  height: 230,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
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
                padding: const EdgeInsets.symmetric(horizontal: 600),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  // onChanged: (value) {
                  //   email = value;
                  // },
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
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 600),
                child: TextField(
                  obscureText: _isObscure,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  // onChanged: (value) {
                  //   password = value;
                  // },
                  decoration: InputDecoration(
                      hintText: "password",
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
                          borderRadius: BorderRadius.circular(32))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                elevation: 5,
                color: Colors.black,
                borderRadius: BorderRadius.circular(32.0),
                child: MaterialButton(
                  onPressed: () async {
                    // if (email.toString().isNotEmpty &&
                    //     password.toString().isNotEmpty) {
                    //   setState(() {
                    //     showSpinner = true;
                    //   });

                    //   logIn(email.toString(), password.toString()).then((user) {
                    //     if (user != null) {
                    //       Fluttertoast.showToast(
                    //         msg: 'Login successfully',
                    //         gravity: ToastGravity.BOTTOM,
                    //         timeInSecForIosWeb: 1,
                    //         backgroundColor: Colors.white,
                    //         textColor: Colors.deepOrange,
                    //         toastLength: Toast.LENGTH_SHORT,
                    //       );
                    //       setState(() {
                    //         showSpinner = false;
                    //       });
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (_) => LoginScreen()));
                    //     } else {
                    //       Fluttertoast.showToast(
                    //         msg: 'Login failed',
                    //         gravity: ToastGravity.BOTTOM,
                    //         timeInSecForIosWeb: 1,
                    //         backgroundColor: Colors.white,
                    //         textColor: Colors.deepOrange,
                    //         toastLength: Toast.LENGTH_SHORT,
                    //       );

                    //       setState(() {
                    //         showSpinner = false;
                    //       });
                    //     }
                    //   });
                    // }
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
              SizedBox(
                height: 15,
              ),
              Text(
                "OR",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                elevation: 5,
                color: Colors.black,
                borderRadius: BorderRadius.circular(32.0),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 200.0,
                  height: 45.0,
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
