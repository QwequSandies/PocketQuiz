import 'package:flutter/material.dart';
import 'package:quizzy/screens/quiz/createquiz.dart';
import 'package:quizzy/widgets/widgets.dart';

class Option extends StatefulWidget {
  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  final controller = PageController(
    initialPage: 0,
  );
  var scrollDirection = Axis.horizontal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: PageView(
        controller: controller,
        scrollDirection: scrollDirection,
        pageSnapping: true,
        children: [
          Container(
              color: Colors.white,
              child: Card(
                color: Colors.indigoAccent,
                elevation: 4,
                margin: EdgeInsets.all(24),
                child: Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateQuiz()));
                      },
                      child: blueButton(context, "Create your quiz")),
                ),
              )),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.purpleAccent,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateQuiz()));
                    },
                    child: blueButton(context, "Create your quiz")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
