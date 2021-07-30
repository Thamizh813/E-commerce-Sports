import 'package:bat/clothes.dart';
import 'package:bat/homewithsign/homwithsign.dart';
import 'package:bat/main.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  AuthForm(this.submitfn, this.isloading);

  final bool isloading;

  final void Function(String email, String username, String userpassword,
      bool islogin, BuildContext ctx) submitfn;

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  void _trysubmit() {
    final _isvalid = _formkey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (_isvalid) {
      _formkey.currentState!.save();
      widget.submitfn(_usermail.trim(), _username.trim(), _password.trim(),
          isLogin, context);
    }
  }

  var isLogin = true;
  var _usermail = '';
  var _username = '';
  var _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
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
              padding: const EdgeInsets.only(left: 70),
              child: SizedBox(
                child: Image.asset("assets/ddd.png"),
                height: 120,
                width: 350,
              ),
            ),
            Card(
              color: Colors.grey.withOpacity(.1),
              shadowColor: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 300, vertical: 100),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Form(
                      key: _formkey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            key: ValueKey('mail'),
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return 'enter valid email';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration:
                                InputDecoration(labelText: 'user@mail.com'),
                            onSaved: (value) {
                              _usermail = value!;
                            },
                          ),
                          if (!isLogin)
                            TextFormField(
                                key: ValueKey('name'),
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 4) {
                                    return 'Enter valid address';
                                  }
                                  return null;
                                },
                                decoration:
                                    InputDecoration(labelText: 'Address'),
                                onSaved: (value) {
                                  _username = value!;
                                }),
                          TextFormField(
                              key: ValueKey('pwd'),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 7) {
                                  return 'password must be of more than 7 characters';
                                }
                                return null;
                              },
                              decoration:
                                  InputDecoration(labelText: 'password'),
                              obscureText: true,
                              onSaved: (value) {
                                _password = value!;
                              }),
                          SizedBox(
                            height: 20,
                          ),
                          if (widget.isloading) CircularProgressIndicator(),
                          // if (!widget.isloading)
                          RaisedButton(
                            color: Colors.black,
                            textColor: Colors.grey,
                            child: Text(isLogin ? 'Login' : 'Signup'),
                            onPressed: _trysubmit,
                            onLongPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomePagewithsign()));
                            },
                          ),
                          if (!widget.isloading)
                            FlatButton(
                                textColor: Theme.of(context).primaryColor,
                                child: Text(
                                  isLogin
                                      ? 'Create a account'
                                      : ' Have an account?',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isLogin = !isLogin;
                                  });
                                }),
                        ],
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
