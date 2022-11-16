import 'package:appontap/src/Auditions.dart';
import 'package:appontap/src/Games.dart';
import 'package:appontap/src/Practice.dart';
import 'package:appontap/src/Profile.dart';
import 'package:appontap/src/Rank.dart';
import 'package:appontap/src/Settings.dart';
import 'package:appontap/src/Success.dart';
import 'package:flutter/material.dart';

class DashBoard_Page extends StatefulWidget {
  const DashBoard_Page({super.key});

  @override
  State<DashBoard_Page> createState() => _DashBoard_PageState();
}

class _DashBoard_PageState extends State<DashBoard_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffDAB56F),
          toolbarHeight: 100,
          elevation: 0,
          //backgroundColor: Colors.blue,
          centerTitle: true,
          title: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "HI, Madam",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 200),
                                child: IconButton(
                                  icon: Image.asset("assets/businessman.png"),
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Profile_Page())),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xffDAB56F),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: ElevatedButton(
                        onPressed: onAuditions,
                        child: Container(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/assignment.png",
                                    width: 89.13,
                                    height: 95.37,
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "Thi Thử",
                                    style: TextStyle(
                                      color: Color(0xff0A0909),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFe0e0e0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      gotoPracticePage(context))),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/studying.png",
                                    width: 85.0,
                                    height: 90,
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "Ôn Luyện",
                                    style: TextStyle(
                                      color: Color(0xff0A0909),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFe0e0e0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Rank_Page())),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/ranking.png",
                                    width: 89.13,
                                    height: 89.13,
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "BXH",
                                    style: TextStyle(
                                      color: Color(0xff0A0909),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFe0e0e0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile_Page())),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/businessman.png",
                                    width: 89.13,
                                    height: 89.13,
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "Thông Tin",
                                    style: TextStyle(
                                      color: Color(0xff0A0909),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFe0e0e0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Settings_Page())),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/settings.png",
                                    width: 89.13,
                                    height: 82.81,
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "Cài Đặt",
                                    style: TextStyle(
                                      color: Color(0xff0A0909),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFe0e0e0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 150.0,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Games_Page())),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/games.png",
                                    width: 89.13,
                                    height: 82.81,
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "Game",
                                    style: TextStyle(
                                      color: Color(0xff0A0909),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFe0e0e0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onSuccess() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoSuccessPage(context)));
  }

  Widget gotoSuccessPage(BuildContext context) {
    return Success_Page();
  }

  void onAuditions() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoAuditionsPage(context)));
  }

  Widget gotoAuditionsPage(BuildContext context) {
    return AuditionsPage();
  }

  void onPractice() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoPracticePage(context)));
  }

  Widget gotoPracticePage(BuildContext context) {
    return Practice_Page();
  }
}
