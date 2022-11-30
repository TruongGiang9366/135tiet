import 'package:appontap/src/DashBoard.dart';
import 'package:appontap/src/Register.dart';
import 'package:appontap/src/blogs/Login_blog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  // LoginBloc bloc = new LoginBloc();
  final _passController = new TextEditingController();
  final _emailController = new TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passController.text.trim(),
    );
  }

  // Future signIn() async {
  //   if (bloc.isValid(
  //     _emailController.text,
  //     _passController.text,
  //   )) {
  //     try {
  //       await FirebaseAuth.instance.signInWithEmailAndPassword(
  //           email: _emailController.text.trim(),
  //           password: _passController.text.trim());
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'user-not-found') {
  //         print('No user found for that email.');
  //       } else if (e.code == 'wrong-password') {
  //         print('Wrong password provided for that user.');
  //       }
  //     }
  //   }
  // }

  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: const Text(
                      "Đăng Nhập",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: _emailController,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        fillColor: Colors.grey[200],
                        filled: true,
                        icon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: _passController,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: 'PassWord',
                        labelText: 'PassWord',
                        fillColor: Colors.grey[200],
                        filled: true,
                        icon: Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: GestureDetector(
                      onTap: signIn,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Đăng Nhập',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                                builder: (context) => Register_Page(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                              size: 50,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                              size: 50,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
