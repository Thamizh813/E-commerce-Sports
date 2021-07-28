import 'package:bat/addtocart.dart';
import 'package:bat/clothes.dart';
import 'package:bat/feed_body.dart';
import 'package:bat/home/notificationtest.dart';
import 'package:bat/yadava.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  get user => null;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        titleSpacing: -2.0,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: new Text('Nike',
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
          ),
          new IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => notifytext()));
            },
            icon: Icon(Icons.notifications),
          ),
          new IconButton(
              icon: new Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Addtocart('', '', '')));
              }),
          // new IconButton(
          //     icon: new Icon(Icons.account_circle_outlined),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => notifytext()));
          //     }),
        ],
      ), //AppBar
      drawer: Draw(user: user),

      body: new Feed_body(), //Feed body
    ); //Scaffold
  }
}

class Draw extends StatefulWidget {
  final User user;
  const Draw({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  bool _isSigningOut = false;

  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            accountName: new Text('NAME: ${_currentUser.displayName}',
                style: new TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            accountEmail: new Text('EMAIL: ${_currentUser.email}',
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
            onTap: () {},
          ), //List Tile 5
          new ListTile(
            title: new Text('My Cart'),
            leading: new Icon(Icons.shopping_cart),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Addtocart('', '', '')));
            },
          ), //List Tile 6
          // new ListTile(
          //   title: new Text('My Wishlist'),
          //   leading: new Icon(Icons.favorite),
          //   onTap: () {},
          // ), //List Tile 7
          new ListTile(
            title: new Text('My Orders'),
            leading: new Icon(Icons.account_balance_wallet),
            onTap: () {},
          ), //List Tile 8
          new ListTile(
            title: new Text('My Account'),
            leading: new Icon(Icons.account_box),
            onTap: () {},
          ),

          _isSigningOut
              ? CircularProgressIndicator()
              : //List Tile 9
              new ListTile(
                  title: new Text('Logout'),
                  leading: new Icon(Icons.remove_circle_outline),
                  onTap: () async {
                    setState(() {
                      _isSigningOut = true;
                    });
                    await FirebaseAuth.instance.signOut();
                    setState(() {
                      _isSigningOut = false;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomePage1(),
                      ),
                    );
                  },
                ),
          new ListTile(
            title: new Text('About us'),
            leading: new Icon(Icons.info),
            onTap: () {},
          ), //List Tile 10
        ],
        padding: EdgeInsets.zero,
      ), //parent ListView
    );
  }
}
