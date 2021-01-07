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
      {'questionText':'This is the first question','answer':['shahab','taghi','naghi']},
      {'questionText':'This is the seccond question','answer':['mamad','taghi','sholi']},
      {'questionText':'This is the thirth question','answer':['Iran IRan','TEHRAN','kiosk']},
      {'questionText':'This is the finaly question','answer':['alibaba','digikala','nagh baba']},
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('این نرم افزار من است'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answer']as List<String>).map((answer){
            return Answer(_answerQuestions, answer);
          }).toList(),
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
