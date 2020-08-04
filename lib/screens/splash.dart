import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizzy/screens/signin.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => SignIn(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "PocketQuiz",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
            fontFamily: "Lobster",
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
