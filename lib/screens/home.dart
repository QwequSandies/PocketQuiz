import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzy/widgets/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light,
        ),
        body: ListView(
          children: <Widget>[
            customcard("Flutter", images[0],subtext[0]),
            customcard("Java", images [3], subtext[1]),
            customcard("Visual Basic", images[2], subtext[3]),
            customcard(" C++", images[1], subtext[2]),
            customcard(" Javascript", images[4], subtext[4]),
            customcard(" Ubuntu", images[5], subtext[5]),
          ],
        ));
  }
}
