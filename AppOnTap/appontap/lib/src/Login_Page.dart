import 'package:appontap/src/DashBoard.dart';
import 'package:appontap/src/OTP.dart';
import 'package:appontap/src/Register.dart';
import 'package:appontap/src/blogs/Login_blog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/async.dart';

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
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 50, 30, 70),
                          child: StreamBuilder(
                            stream: bloc.phoneStream,
                            builder: (context, snapshot) => TextField(
                              controller: _phonenumberController,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Số điện thoại',
                                labelText: 'Số điện thoại',
                                errorText: snapshot.hasError
                                    ? snapshot.error.toString()
                                    : null,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                prefix: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    '+91',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                labelStyle: TextStyle(
                                    color: Color(0xff888888), fontSize: 15),
                              ),
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: onOTP,
                          child: Text(
                            'Tiếp Tục',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFe0e0e0)),
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
                          padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Bạn chưa có tài khoản?"),
                                TextButton(
                                  child: Text(
                                    'Đăng ký ngay',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  onPressed: onRegister,
                                )
                              ],
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
    return OTP_Page();
  }
}
