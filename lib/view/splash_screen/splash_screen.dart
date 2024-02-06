import 'dart:async';

import 'package:flutter/material.dart';
import 'package:miniproject/view/question_screen/question_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => QnsQuiz(context),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: const Image(
          image: NetworkImage(
            'https://th.bing.com/th?q=Answer+Logo&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-IN&cc=IN&setlang=en&adlt=moderate&t=1&mw=247',
          ),
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
