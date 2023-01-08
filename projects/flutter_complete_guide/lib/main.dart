import 'package:flutter/material.dart';

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
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("First App")),
      body: Column(children: [
        Text(questions[_questionIndex]),
        ElevatedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
        ElevatedButton(child: Text("Answer 2"), onPressed: () => print("Answer 2")),
        ElevatedButton(child: Text("Answer 3"), onPressed: () => {
          print("Big Anon")
        },),
      ],),
      // Person("Ace", 26).toString())
    ));
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age) {
  }

  @override
  String toString() {
    return "Name:" + this.name + " Age:" + this.age.toString();
  }
}