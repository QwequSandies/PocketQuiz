


import 'package:flutter/material.dart';
import 'package:quizzy/screens/quiz/quizpage.dart';

Widget appBar(BuildContext context) {
  return Center(
    child: RichText(
      text: TextSpan(
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
                text: 'Pocket',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black54)),
            TextSpan(
                text: 'Quiz',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
          ]),
    ),
  );
}

List<String> images = [
  "images/flutter.jpg",
  "images/c++.jpg",
  "images/visual-basic.jpg",
  "images/java.jpg",
  "images/javascript.jpg",
  "images/ubuntu.jpg"
];

List<String> subtext = [
  "Flutter uses Dart programming language\n which was introduced by Google in 2011 \n and is rarely used by developers.",
  "Java is a general-purpose programming \n language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.\n",
  "C++ is an object oriented computer \nlanguage created by notable computer \n scientist Bjorne Stroustrop",
  "Visual Basic is a third-generation event-driven programming language",
  "JavaScript is a text-based programming \n language used both on the client-side\n and server-side that allows you to make web pages interactive.",
  "Ubuntu is a Linux based operating system. Get to know your command lines"
];

Widget customcard(String langname, String image, String subtext) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Getjson(),
        ));
      },
      child: Material(
        color: Colors.blue,
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 200,
                    width: 200,
                    child: ClipOval(
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          image,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  langname,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontFamily: "Lobster",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  subtext,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget blueButton(BuildContext context, String label) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(30)),
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width - 48,
    child: Text(
      label,
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}

