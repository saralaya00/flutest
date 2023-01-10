import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = const [
      {
        'questionText': "What's your favorite color?", 
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': "What's your favorite animal?", 
        'answers': ['Duck', 'Cat', 'Cow', 'Donkaay']
      },
      {
        'questionText': "What's the answer to this question?", 
        'answers': ['this', 'this', 'this', 'this']
      },
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("First App")),
      body: Column(children: [
        Question(questions[_questionIndex]['questionText']),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ],),
      // Person("Ace", 26).toString())
    ));
  }
}