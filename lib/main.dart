import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'This is the first question',
      'This is the seccond question',
      'This is the thirth question',
      'This is the finaly question',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('این نرم افزار من است'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex],
          ),
          Answer(_answerQuestions),
          Answer(_answerQuestions),
          Answer(_answerQuestions),
        ],
      ),
    ));
  }

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("AnswerQuestions $_questionIndex");
  }
}
