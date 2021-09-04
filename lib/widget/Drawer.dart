import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nm/block/toast_message.dart';
import 'package:nm/screens/home_page.dart';
import 'package:nm/screens/laundry_home.dart';
import 'package:nm/screens/sign_in.dart';

class MainDrawer extends StatelessWidget {

  @override
    Widget build(BuildContext context){
  return Drawer(
    child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.lightBlue[200],
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  decoration:BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage('https://i.ibb.co/qxxkHzb/aa.jpg',
                    ),
                      fit: BoxFit.fill,
                  ),
                ),
                ),
                Text('Wash',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () {
            FirebaseAuth.instance.signOut();
            displayToastMessage("You are now Logged Out", context);
            Navigator.push( context,
                          MaterialPageRoute(builder: (_) => SignIn()));
            // Navigator.of(context).pushReplacementNamed(context,
            //               MaterialPageRoute(builder: (_) => SignIn()));
            // Navigator.pop(context);
            // Navigator.of(context).push(REGISTRATION());
          },
          leading: Icon(
            Icons.assignment_ind_rounded,
            color: Colors.black45,
          ),
          title: Text("Logout"),
        ),
        ListTile(
          onTap: () {
            displayToastMessage("You have entered Laundry Shop", context);
            //  Laundry
            Navigator.push( context,
                          MaterialPageRoute(builder: (_) => HomePageLon()));
          },
          leading: Icon(
            Icons.wash,
            color: Colors.black45,
          ),
          title: Text("Laundry shops"),
        ),
        ListTile(
          onTap: () {
            displayToastMessage("You have entered Washing Bay", context);
            // Washing
            Navigator.push( context,
                          MaterialPageRoute(builder: (_) => HomePage()));
          },
          leading: Icon(
            Icons.airport_shuttle_sharp,
            color: Colors.black45,
          ),
          title: Text("Washing Bays"),
        ),



        ListTile(
          onTap: () {
            displayToastMessage("You have entered Contact", context);
            Navigator.of(context).push(CONTACT());
          },
          leading: Icon(
            Icons.add_call,
            color: Colors.black45,
          ),
          title: Text("Contact"),
        ),

        ListTile(
          onTap: () {
            displayToastMessage("You have entered help", context);
            Navigator.of(context).push(HELP());
          },
          leading: Icon(
            Icons.help_outline,
            color: Colors.black45,
          ),
          title: Text("Help"),
        ),

        ListTile(
          onTap: () {
            displayToastMessage("You have entered About Us", context);
            Navigator.of(context).push(ABOUT());
          },
          leading: Icon(
            Icons.accessibility_sharp,
            color: Colors.black45,
          ),
          title: Text("About Us"),
        ),
      ],
    ),
  );
  }
}

class HELP extends MaterialPageRoute<Null> {
  HELP()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        title: Text('Help'),
        elevation: 5.0,
        centerTitle: true,
      ),
      body: Center(
        child: Text('Help'),
      ),
    );
  });
}

class ABOUT extends MaterialPageRoute<Null> {
  ABOUT()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue[200],
        title: Text('About Us'),
        elevation: 5.0,
        centerTitle: true,
      ),
      body: Center(
        child: Text('About Us'),
      ),
    );
  });
}

class CONTACT extends MaterialPageRoute<Null> {
  CONTACT()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        title: Text('Contact'),
        elevation: 5.0,
        centerTitle: true,
      ),
      body: Center(
        child: Text('Contact'),
      ),
    );
  });
}