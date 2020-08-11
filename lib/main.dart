import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/internetConnectivity.dart';
import 'package:flutter_login_ui/loginscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget result;

  @override
  void initState() {
    CheckStatus();
    super.initState();
  }

  void CheckStatus() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        ChangeValue(LoginScreen());
      } else {
        ChangeValue(InternetConnectivity());
      }
    });
  }

  void ChangeValue(Widget resultValue) {
    setState(() {
      result = resultValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return result != null ? result : Text("Unknown");
  }
}
