import 'package:flutter/material.dart';

class Lesson_Page extends StatefulWidget {
  const Lesson_Page({super.key});

  @override
  State<Lesson_Page> createState() => _Lesson_PageState();
}

class _Lesson_PageState extends State<Lesson_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              child: const Text(
                "Bài Học",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
