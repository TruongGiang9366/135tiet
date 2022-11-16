import 'package:appontap/src/DashBoard.dart';
import 'package:appontap/src/Edit.dart';
import 'package:appontap/src/Lesson.dart';
import 'package:appontap/src/Login_Page.dart';
import 'package:appontap/src/OTP.dart';
import 'package:appontap/src/Practice.dart';
import 'package:appontap/src/Profile.dart';
import 'package:appontap/src/Rank.dart';
import 'package:appontap/src/Register.dart';
import 'package:appontap/src/Score.dart';
import 'package:appontap/src/Settings.dart';
import 'package:appontap/src/Success.dart';
import 'package:appontap/src/Welcome.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Rank_Page(),
    );
  }
}
