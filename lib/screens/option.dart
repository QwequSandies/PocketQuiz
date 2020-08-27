import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  PageController controller = PageController();
  var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return PageView(children: <Widget>[
      PageView.builder(
        controller: controller,
        itemBuilder: (context, position) {
          if (position == currentPageValue.floor()) {
            return Transform(
              transform: Matrix4.identity()
                ..rotateX(currentPageValue - position),
              child: Container(
                color: position % 2 == 0 ? Colors.blue : Colors.pink,
                child: Center(
                  child: Text(
                    "Page",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
              ),
            );
          } else if (position == currentPageValue.floor() + 1) {
            return Transform(
              transform: Matrix4.identity()
                ..rotateX(currentPageValue - position),
              child: Container(
                color: position % 2 == 0 ? Colors.blue : Colors.pink,
                child: Center(
                  child: Container(
                    height: 200,
                    width: 150,
                    color: Colors.green,
                    child: Text(
                      " "
                    ),
                  )
                ),
              ),
            );
          } else {
            return Container(
              color: position % 2 == 0 ? Colors.blue : Colors.pink,
              child: Center(
                child: Text(
                  "Page",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            );
          }
        },
        itemCount: 2,
      )
    ]);
  }
}
