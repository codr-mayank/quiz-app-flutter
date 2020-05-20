import 'package:flutter/material.dart';
import 'package:quiz_app/model/question.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List questionBank = [
    Question.name(
        'Cyclones spin in a clockwise direction in the southern hemisphere',
        true),
    Question.name('Goldfish only have a memory of three seconds', false),
    Question.name('The capital of Libya is Benghazi', false),
    Question.name(
        'Brazil is the only country in the Americas to have the official language of Portuguese',
        true),
    Question.name(
        'The Channel Tunnel is the longest rail tunnel in the world', false),
    Question.name(
        'Darth Vader famously says the line “Luke, I am your father” in The Empire Strikes Back',
        false),
    Question.name('Stephen Hawking declined a knighthood from the Queen', true),
    Question.name('The highest mountain in England is Ben Nevis', false),
    Question.name(
        'Nicolas Cage and Michael Jackson both married the same woman', true),
    Question.name(
        'Japan and Russia did not sign a peace treaty after World War Two so are technically still at war',
        true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GK Quiz'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Image.asset('images/flag.png', width: 250, height: 180)),
            Container(
              height: 120.0,
              child: Text(questionBank[0].questionText),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
