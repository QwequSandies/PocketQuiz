import 'package:flutter/material.dart';
import 'package:quizzy/widgets/widgets.dart';

class CreateQuiz extends StatefulWidget {
  @override
  _CreateQuizState createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  final _formkey = GlobalKey<FormState>();
  String quizImageUrl, quizTitle, quizDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
        brightness: Brightness.light,
      ),
      body: Form(
        key: _formkey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (val) => val.isEmpty ? "Enter Image Url " : null,
                decoration: InputDecoration(hintText: "Quiz Image Url"),
                onChanged: (val) {
                  quizImageUrl = val;
                },
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                validator: (val) => val.isEmpty ? "Enter Quiz Title " : null,
                decoration: InputDecoration(hintText: "Quiz Title"),
                onChanged: (val) {
                  quizTitle = val;
                },
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                validator: (val) =>
                    val.isEmpty ? "Enter Quiz Description " : null,
                decoration: InputDecoration(hintText: "Quiz Description"),
                onChanged: (val) {
                  quizDescription = val;
                },
              ),
              Spacer(),
              blueButton(context, "Create Quiz"),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
