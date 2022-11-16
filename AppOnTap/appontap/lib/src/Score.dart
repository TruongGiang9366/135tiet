import 'package:appontap/src/Profile.dart';
import 'package:appontap/src/Settings.dart';
import 'package:flutter/material.dart';

class Score_Page extends StatefulWidget {
  const Score_Page({super.key});

  @override
  State<Score_Page> createState() => _Score_PageState();
}

class _Score_PageState extends State<Score_Page> {
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
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Settings_Page())),
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "Điểm cá nhân",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(100, 0, 0, 0),
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
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "#",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Họ và Tên",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Điểm",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(23, 20, 10, 0),
                              child: Container(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                ),
                                color: Color(0xff33CC00),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1"),
                                    Image.asset("assets/profile.png"),
                                    Text("Nguyễn Văn A"),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: new EdgeInsets.fromLTRB(15, 20, 30, 0),
                                height: 50,
                                width: 50,
                                color: Color(0xff33CC00),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("500")],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(23, 20, 10, 0),
                              child: Container(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                ),
                                color: Color(0xffF307F8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("2"),
                                    Image.asset("assets/profile2.png"),
                                    Text("Nguyễn Thị B"),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: new EdgeInsets.fromLTRB(15, 20, 30, 0),
                                height: 50,
                                width: 50,
                                color: Color(0xffF1F500),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("475")],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(23, 20, 10, 0),
                              child: Container(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                ),
                                color: Color(0xffF307F8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("3"),
                                    Image.asset("assets/profile.png"),
                                    Text("Nguyễn Văn B"),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: new EdgeInsets.fromLTRB(15, 20, 30, 0),
                                height: 50,
                                width: 50,
                                color: Color(0xffF1F500),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("425")],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(23, 20, 10, 0),
                              child: Container(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                ),
                                color: Color(0xffF307F8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("4"),
                                    Image.asset("assets/profile2.png"),
                                    Text("Trần Thị B"),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: new EdgeInsets.fromLTRB(15, 20, 30, 0),
                                height: 50,
                                width: 50,
                                color: Color(0xffF1F500),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("376")],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(23, 20, 10, 0),
                              child: Container(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                ),
                                color: Color(0xffF307F8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("5"),
                                    Image.asset("assets/profile.png"),
                                    Text("Phạm Văn A"),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: new EdgeInsets.fromLTRB(15, 20, 30, 0),
                                height: 50,
                                width: 50,
                                color: Color(0xffF1F500),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("368")],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(23, 20, 10, 0),
                              child: Container(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                ),
                                color: Color(0xffF307F8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("6"),
                                    Image.asset("assets/profile2.png"),
                                    Text("Phạm Thị C"),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: new EdgeInsets.fromLTRB(15, 20, 30, 0),
                                height: 50,
                                width: 50,
                                color: Color(0xffF1F500),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("350")],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(23, 20, 10, 0),
                              child: Container(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                ),
                                color: Color(0xffF307F8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("7"),
                                    Image.asset("assets/profile.png"),
                                    Text("Trần Văn A"),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: new EdgeInsets.fromLTRB(15, 20, 30, 0),
                                height: 50,
                                width: 50,
                                color: Color(0xffF1F500),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("325")],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(23, 20, 10, 0),
                              child: Container(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18,
                                ),
                                color: Color(0xffF307F8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("8"),
                                    Image.asset("assets/profile.png"),
                                    Text("Nguyễn Văn c"),
                                    SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: new EdgeInsets.fromLTRB(15, 20, 30, 0),
                                height: 50,
                                width: 50,
                                color: Color(0xffF1F500),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("300")],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
