import 'package:flutter/material.dart';
import 'package:quizzy/screens/home.dart';

// ignore: must_be_immutable
class Result extends StatefulWidget {
  int marks;
  Result({Key key, @required this.marks}) : super(key: key);

  @override
  _ResultState createState() => _ResultState(marks);
}

class _ResultState extends State<Result> {
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
    "images/fail,png",
  ];

  String image;
  String message;

  void initState() {
    if (marks == 0) {
      image = images[3];
      message = "You Failed..\n" + "You Scored $marks";
    }else if (marks < 20) {
      image = images[2];
      message = "You Should Try Hard..\n" + "You Scored $marks";
    } else if (marks < 35) {
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored $marks";
    } else {
      image = images[0];
      message = "You Did Very Well..\n" + "You Scored $marks";
    }
    super.initState();
  }

  int marks;

  _ResultState(this.marks);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Material(
              elevation: 10,
              child: Container(
                  child: Column(
                children: [
                  Material(
                    child: Container(
                      width: 300,
                      height: 300,
                      child: ClipRect(
                        child: Image(
                            image: AssetImage(
                          image,
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Center(
                      child: Text(
                        message,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: deprecated_member_use
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  borderSide: BorderSide(width: 3, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
