import 'package:bat/clothes.dart';
import 'package:bat/feed_body.dart';
import 'package:bat/home/account.dart';
import 'package:bat/home/accountnamepage.dart';

import 'package:bat/home/notificationtest.dart';
import 'package:bat/home/outlet.dart';

import 'package:bat/homewithsign/homwithsign.dart';

import 'package:bat/yadava.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'login/authscreen.dart';

void main() => runApp(new MyApp());

class MyApps extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  return AuthScreen();
                },
              ));
        }
        return CircularProgressIndicator();
      },
    );
  }
}

// This app is a stateful, it tracks the user's current choice.
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Choice _selectedChoice = choices[0]; // The app's "state".

  // void _select(Choice choice) {
  //   // Causes the app to rebuild with the new _selectedChoice.
  //   setState(() {
  //     _selectedChoice = choice;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : Colors.blue), //Theme Data
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        titleSpacing: -2.0,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: new Text('Nike Shopping',
            style: new TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontFamily: 'Billabong',
                fontWeight: FontWeight.w100,
                fontSize: 30.0)),

        //App title with left padding

        iconTheme: new IconThemeData(color: Colors.white),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 1050),
              child: Image.asset(
                'lib/assets/Nikes.jpg',
                height: 40,
                width: 60,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15, right: 10),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApps()));
              },
              child: Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          new IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => notifytext()));
            },
            icon: Icon(Icons.notifications),
          ),
          // new IconButton(
          //     icon: new Icon(Icons.shopping_cart),
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => Addtocart('', '', '')));
          //     }),
          new IconButton(
              icon: new Icon(Icons.account_circle_outlined),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account()));
              }),
        ],
      ), //AppBar
      drawer: Draw(),

      body: new Feed_body(), //Feed body
    ); //Scaffold
  }
}

class Draw extends StatefulWidget {
  Draw({Key? key}) : super(key: key);

  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            accountName: new Text('@username',
                style: new TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            accountEmail: new Text('@gmail.com',
                style: new TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black)),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.black,
              child: new Icon(
                Icons.account_circle,
                size: 50.0,
                color: Colors.white,
              ),
            ), //Circle Avatar
          ), //UserAccount drawer header parent box
          new Divider(
              height: defaultTargetPlatform == TargetPlatform.iOS ? 5.0 : 0.0,
              color: defaultTargetPlatform == TargetPlatform.iOS
                  ? Colors.grey
                  : Colors.white),

          new ListTile(
            title: new Text('Home'),
            leading: new Icon(Icons.remove_circle_outline),
            onTap: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),

          // new ListTile(
          //   title: new Text('Clothings'),
          //   leading: new Icon(Icons.shopping_bag_rounded),
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => ClothingPage()));
          //   },
          // ), //List Tile 3
          // new ListTile(
          //   title: new Text('Sports'),
          //   leading: new Icon(Icons.sports_football),
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => SportsPage()));
          //   },
          // ), //List 4
          // new ListTile(
          //   title: new Text('Offer Zone'),
          //   leading: new Icon(Icons.local_offer),
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => OutPage()));
          //   },
          // ), //List Tile 5
          // new ListTile(
          //   title: new Text('My Cart'),
          //   leading: new Icon(Icons.shopping_cart),
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => Addtocart('', '', '')));
          //   },
          // ), //List Tile 6
          new ListTile(
            title: new Text('Account'),
            leading: new Icon(Icons.account_circle_outlined),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            },
          ), //List Tile 7
          // new ListTile(
          //   title: new Text('My Orders'),
          //   leading: new Icon(Icons.account_balance_wallet),
          //   onTap: () {},
          // ), //List Tile 8
          // new ListTile(
          //   title: new Text('My Account'),
          //   leading: new Icon(Icons.account_box),
          //   onTap: () {},
          // ), //List Tile 9
          // new ListTile(
          //   title: new Text('Logout'),
          //   leading: new Icon(Icons.remove_circle_outline),
          //   onTap: () async {

          //   },
          // ),
          // new ListTile(
          //   title: new Text('About us'),
          //   leading: new Icon(Icons.info),
          //   onTap: () {},
          // ), //List Tile 10
        ],
        padding: EdgeInsets.zero,
      ), //parent ListView
    );
  }
}

class Draw1 extends StatefulWidget {
  Draw1({Key? key}) : super(key: key);

  @override
  _Draw1State createState() => _Draw1State();
}

class _Draw1State extends State<Draw1> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            accountName: new Text('Thamizharasan G',
                style: new TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            accountEmail: new Text('thamizh@gmail.com',
                style: new TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black)),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.black,
              child: new Icon(
                Icons.account_circle,
                size: 50.0,
                color: Colors.white,
              ),
            ), //Circle Avatar
          ), //UserAccount drawer header parent box
          new Divider(
              height: defaultTargetPlatform == TargetPlatform.iOS ? 5.0 : 0.0,
              color: defaultTargetPlatform == TargetPlatform.iOS
                  ? Colors.grey
                  : Colors.white),

          new ListTile(
            title: new Text('Home'),
            leading: new Icon(Icons.remove_circle_outline),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePagewithsign()));
            },
          ),

          new ListTile(
            title: new Text('Clothings'),
            leading: new Icon(Icons.shopping_bag_rounded),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ClothingPage()));
            },
          ), //List Tile 3
          new ListTile(
            title: new Text('Sports'),
            leading: new Icon(Icons.sports_football),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SportsPage()));
            },
          ), //List 4
          new ListTile(
            title: new Text('Offer Zone'),
            leading: new Icon(Icons.local_offer),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OutPage()));
            },
          ), //List Tile 5
          // new ListTile(
          //   title: new Text('My Cart'),
          //   leading: new Icon(Icons.shopping_cart),
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => Addtocart('', '', '')));
          //   },
          // ), //List Tile 6
          new ListTile(
            title: new Text('Account'),
            leading: new Icon(Icons.account_circle_outlined),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Accountresult()));
            },
          ), //List Tile 7
          new ListTile(
            title: new Text('Log out'),
            leading: new Icon(Icons.cancel),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ), //List Tile 8
          // new ListTile(
          //   title: new Text('My Account'),
          //   leading: new Icon(Icons.account_box),
          //   onTap: () {},
          // ), //List Tile 9
          // new ListTile(
          //   title: new Text('Logout'),
          //   leading: new Icon(Icons.remove_circle_outline),
          //   onTap: () async {

          //   },
          // ),
          // new ListTile(
          //   title: new Text('About us'),
          //   leading: new Icon(Icons.info),
          //   onTap: () {},
          // ), //List Tile 10
        ],
        padding: EdgeInsets.zero,
      ), //parent ListView
    );
  }
}
