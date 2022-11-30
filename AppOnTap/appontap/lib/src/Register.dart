import 'package:appontap/src/Login_Page.dart';
import 'package:appontap/src/Success.dart';
import 'package:appontap/src/blogs/register_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({super.key});

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  DateTime date = new DateTime(2022, 29, 10);
  TextEditingController _date = TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  RegisterBloc bloc = new RegisterBloc();
  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    bloc.dispose();
    super.dispose();
  }

  void signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passController.text.trim(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'Đăng Ký',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: StreamBuilder(
                        stream: bloc.nameStream,
                        builder: (context, snapshot) => TextField(
                          controller: _nameController,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Họ và tên',
                            labelText: 'Họ và tên',
                            icon: Icon(FontAwesomeIcons.user),
                            fillColor: Colors.grey[200],
                            filled: true,
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: StreamBuilder(
                        builder: (context, snapshot) => TextField(
                          controller: _phoneController,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Số điện thoại',
                            labelText: 'Số điện thoại',
                            icon: Icon(FontAwesomeIcons.phone),
                            fillColor: Colors.grey[200],
                            filled: true,
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefix: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                '+91',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    //   child: TextField(
                    //     controller: _date,
                    //     decoration: InputDecoration(
                    //       hintText: 'Sinh Nhật',
                    //       labelText: 'Sinh Nhật',
                    //       icon: Icon(Icons.calendar_today_rounded),
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(10.0),
                    //       ),
                    //     ),
                    //     onTap: () async {
                    //       DateTime? pickeddate = await showDatePicker(
                    //         context: context,
                    //         initialDate: date,
                    //         firstDate: DateTime(2000),
                    //         lastDate: DateTime(2101),
                    //       );
                    //       if (pickeddate != null) {
                    //         setState(() {
                    //           _date.text =
                    //               DateFormat('yyyy-MM-dd').format(pickeddate);
                    //         });
                    //       }
                    //     },
                    //   ),
                    // ),
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
                            fillColor: Colors.grey[200],
                            filled: true,
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
                            fillColor: Colors.grey[200],
                            filled: true,
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: onSuccess,
                          child: Text(
                            'Đăng Ký',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
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
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Bạn đã có tài khoản?"),
                            TextButton(
                              child: Text(
                                'Đăng nhập ngay',
                                style: TextStyle(fontSize: 16),
                              ),
                              onPressed: onSignIn,
                            )
                          ],
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

  void onSignIn() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoLoginPage(context)));
  }

  Widget gotoLoginPage(BuildContext context) {
    return Login_Page();
  }

  void onSuccess() {
    var isValid = bloc.isValid(_nameController.text, _emailController.text,
        _phoneController.text, _passController.text);
    if (isValid) {
      bloc.signUp(_emailController.text, _passController.text,
          _phoneController.text, _nameController.text, () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => gotoSuccessPage(context)));
      });
    }
  }

  Widget gotoSuccessPage(BuildContext context) {
    return Success_Page();
  }
}
