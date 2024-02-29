import 'package:flutter/material.dart';
import 'package:quiz/questionss.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              qstn[indx].quiz,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  check(true);
                  next();
                },
                child: const Text('YES'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  check(false);
                  next();
                },
                child: const Text('NO'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'RESULT:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              result,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }

  List qstn = [
    Myquestions(quiz: 'do you have a bomb?', ans: false),
    Myquestions(quiz: 'are you happy?', ans: true),
    Myquestions(quiz: 'does bike have 2 wheels?', ans: true),
    Myquestions(quiz: 'ektha is a genius?', ans: false),
    Myquestions(quiz: 'is judy the cool guy?', ans: true),
    Myquestions(quiz: 'there are 8 planets on solar system?', ans: false),
    Myquestions(quiz: 'can you see air?', ans: false),
    Myquestions(quiz: 'computer is a machine?', ans: true),
  ];
  int indx = 0;
  void next() {
    if (indx < qstn.length+1) {
      indx++;
      setState(() {});
    }
  }

  String result = '';
  void check(bool answer) {
    if (answer == qstn[indx].ans) {
      result = 'correct answer';
    } else {
      result = 'wrong answer';
    }
  }
}
