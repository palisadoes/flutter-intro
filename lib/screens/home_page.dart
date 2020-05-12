import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_intro/components/question_button.dart';
import 'package:flutter_intro/components/question.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Question(questionText: questions[_questionIndex]),
              GestureDetector(
                onTap: _answerQuestion,
                child: QuestionButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
