import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int questionIndex = 0;

  void answerQuestion(){
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);

  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favourite colour?',
      'What\'s your animal?',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: SafeArea(
        child: Container(
          child:Column(
          children: [
            Container(child: Text(questions[questionIndex]),),
            Column(children: [
              Icon(FontAwesomeIcons.question),
              SizedBox(
                height: 15.0,
              ),
              RaisedButton(onPressed: answerQuestion

              )
            ]),
            ],
),
        ),
      ),
    );
  }
}
