import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/question.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Question(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://thumbs.dreamstime.com/b/male-hand-holding-megaphone-quiz-time-speech-bubble-loudspeaker-banner-business-marketing-advertising-vector-125104939.jpg'),
              radius: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text('GET READY TO FEEL THE THUNDER',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
