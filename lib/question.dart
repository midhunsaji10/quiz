import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            Text('DO YOU HAVE A BOMB?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),),
            SizedBox(
              height: 200,
            ),
            Container(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {

                },
                child: const Text('YES'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {

                },
                child: const Text('NO'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




