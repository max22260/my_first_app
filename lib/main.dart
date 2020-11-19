import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      print("state changed !! ");
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      ' what \'s your favorite color',
      ' what\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('myApp'),
        ),
        body: Column(
          children: [
            Text(
              question[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => {
                print("answer 2 pressed "),
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
