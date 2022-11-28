import 'package:appontap/src/DashBoard.dart';
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
  TextEditingController _passController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
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
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
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
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Column(
                  children: [
                    const Text(
                      "Đăng Nhập",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: StreamBuilder(
                        stream: bloc.emailStream,
                        builder: (context, snapshot) => TextField(
                          controller: _emailController,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            labelText: 'Email',
                            icon: Icon(Icons.email),
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
                        child: StreamBuilder(
                          stream: bloc.passStream,
                          builder: (context, snapshot) => TextField(
                            controller: _passController,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'PassWord',
                              labelText: 'PassWord',
                              icon: Icon(Icons.password),
                              errorText: snapshot.hasError
                                  ? snapshot.error.toString()
                                  : null,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelStyle: TextStyle(
                                  color: Color(0xff888888), fontSize: 15),
                            ),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: onDashBoard,
                          child: Text(
                            'Đăng Nhập',
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
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Register_Page())),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.facebook,
                                size: 60,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  FontAwesomeIcons.google,
                                  size: 50,
                                ))
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }

  void onRegister() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoRegister_Page(context)));
  }

  Widget gotoRegister_Page(BuildContext context) {
    return Register_Page();
  }

  void onDashBoard() {
    if (bloc.isValid(
      _emailController.text,
      _passController.text,
    )) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => gotoDashBoard(context)));
    }
  }

  Widget gotoDashBoard(BuildContext context) {
    return DashBoard_Page();
  }
}
