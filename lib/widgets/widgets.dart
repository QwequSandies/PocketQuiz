import 'package:flutter/material.dart';

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
