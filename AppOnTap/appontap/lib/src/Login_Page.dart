import 'package:appontap/src/DashBoard.dart';
import 'package:appontap/src/OTP.dart';
import 'package:appontap/src/Register.dart';
import 'package:appontap/src/blogs/Login_blog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  LoginBloc bloc = new LoginBloc();
  TextEditingController _phonenumberController = new TextEditingController();
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
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Column(children: [
                    const Text(
                      "Đăng Nhập",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: SizedBox(
                            width: 300,
                            height: 70,
                            child: ElevatedButton.icon(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OTP_Page(toString()),
                                  )),
                              icon: Icon(Icons.phone),
                              label: Text(
                                "Đăng Nhập Bằng Số Điện Thoại",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(30, 144, 255, 1)),
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
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: SizedBox(
                            width: 300,
                            height: 70,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.facebook),
                              label: Text(
                                "Đăng Nhập Bằng FaceBook",
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(30, 144, 255, 1)),
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
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: SizedBox(
                            width: 300,
                            height: 70,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.google),
                              label: Text("Đăng Nhập Bằng Google",
                                  style: TextStyle(fontSize: 20)) ,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(30, 144, 255, 1)),
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
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onRegister() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoRegister_Page(context)));
  }

  Widget gotoRegister_Page(BuildContext context) {
    return Register_Page();
  }

  void onOTP() {
    if (bloc.isValidInfo(_phonenumberController.text)) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => gotoOTP_Page(context)));
    }
  }

  Widget gotoOTP_Page(BuildContext context) {
    return OTP_Page(_phonenumberController.text);
  }
}
