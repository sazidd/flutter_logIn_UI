import 'package:flutter/material.dart';
import 'package:flutter_login_ui/signUpScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        children: <Widget>[
          Container(
            height: 180,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "LogIn",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Welcome to Our Store",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150),
              ),
              color: Colors.lightBlue[800],
            ),
          ),
          Theme(
            data: ThemeData(
              hintColor: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlue[800], width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlue[800], width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlue[800], width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlue[800], width: 1),
                  ),
                ),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              hintColor: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlue[800], width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlue[800], width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlue[800], width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlue[800], width: 1),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              width: double.infinity,
              child: Text(
                "Forgot Password ?",
                style: TextStyle(
                  color: Colors.lightBlue[800],
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.lightBlue[800],
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.lightBlue[800],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.red[900],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign in with google",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign in with facebook",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 1,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
