import 'package:appontap/src/DashBoard.dart';
import 'package:appontap/src/Login_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTP_Page extends StatefulWidget {
  const OTP_Page({super.key});

  @override
  State<OTP_Page> createState() => _OTP_PageState();
}

class _OTP_PageState extends State<OTP_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Color(0xffDAB56F),
        appBar: AppBar(
          backgroundColor: Color(0xffDAB56F),
          toolbarHeight: 100,
          elevation: 0,
          //backgroundColor: Colors.blue,
          centerTitle: true,
          title: Container(
            margin: const EdgeInsets.only(
              top: 50,
            ),
            decoration: BoxDecoration(
              //color: Colors.white,
              borderRadius: BorderRadius.circular(0),
            ),
            child: const Text(
              "Việt Nam Tôi Yêu",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xffDAB56F),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: 50,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "OTP Đã được",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RichText(
                            text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "gửi đến số ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color(0xff070707),
                                ),
                              ),
                              TextSpan(
                                  text: "09x xxxx x78",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Color(0xffFF0000),
                                  ))
                            ]),
                          ),
                          // Text(
                          //   "gửi đến số 09x xxxx x78",
                          //   style: TextStyle(
                          //     fontSize: 24,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          const Padding(
                            padding: const EdgeInsets.fromLTRB(0, 70, 0, 10),
                            child: Text(
                              "OTP",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: SizedBox(
                                              height: 70,
                                              child: AspectRatio(
                                                aspectRatio: 1.0,
                                                child: TextField(
                                                  autofocus: true,
                                                  onChanged: (value) {},
                                                  showCursor: false,
                                                  readOnly: false,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                  ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  maxLength: 1,
                                                  decoration: InputDecoration(
                                                    counter: Offstage(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color:
                                                              Colors.black12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: SizedBox(
                                              height: 70,
                                              child: AspectRatio(
                                                aspectRatio: 1.0,
                                                child: TextField(
                                                  autofocus: true,
                                                  onChanged: (value) {},
                                                  showCursor: false,
                                                  readOnly: false,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                  ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  maxLength: 1,
                                                  decoration: InputDecoration(
                                                    counter: Offstage(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color:
                                                              Colors.black12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: SizedBox(
                                              height: 70,
                                              child: AspectRatio(
                                                aspectRatio: 1.0,
                                                child: TextField(
                                                  autofocus: true,
                                                  onChanged: (value) {},
                                                  showCursor: false,
                                                  readOnly: false,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                  ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  maxLength: 1,
                                                  decoration: InputDecoration(
                                                    counter: Offstage(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color:
                                                              Colors.black12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: SizedBox(
                                              height: 70,
                                              child: AspectRatio(
                                                aspectRatio: 1.0,
                                                child: TextField(
                                                  autofocus: true,
                                                  onChanged: (value) {},
                                                  showCursor: false,
                                                  readOnly: false,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                  ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  maxLength: 1,
                                                  decoration: InputDecoration(
                                                    counter: Offstage(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color:
                                                              Colors.black12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: onDashBoard,
                                child: Text(
                                  'Đăng Nhập',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFFe0e0e0)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: onSignIn,
                                child: Text(
                                  'Quay lại',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFFe0e0e0)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 120,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Bạn chưa được mã?"),
                                      TextButton(
                                        child: Text(
                                          'Gửi lại mã',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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

  void onDashBoard() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoDashBoard_page(context)));
  }

  Widget gotoDashBoard_page(BuildContext context) {
    return DashBoard_Page();
  }

  void onSignIn() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoLoginPage(context)));
  }

  Widget gotoLoginPage(BuildContext context) {
    return Login_Page();
  }
}
