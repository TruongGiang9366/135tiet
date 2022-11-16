import 'package:appontap/src/Login_Page.dart';
import 'package:appontap/src/Success.dart';
import 'package:appontap/src/blogs/register_blocs.dart';
import 'package:flutter/material.dart';
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
  RegisterBloc bloc = new RegisterBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                        child: TextField(
                          controller: _date,
                          decoration: InputDecoration(
                            hintText: 'Sinh Nhật',
                            labelText: 'Sinh Nhật',
                            icon: Icon(Icons.calendar_today_rounded),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onTap: () async {
                            DateTime? pickeddate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            );
                            if (pickeddate != null) {
                              setState(() {
                                _date.text =
                                    DateFormat('yyyy-MM-dd').format(pickeddate);
                              });
                            }
                          },
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
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: onSuccess,
                            child: Text(
                              'Đăng Ký',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
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
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Container(
                              width: double.infinity,
                              height: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                    ],
                  ),
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
    if (bloc.isValid(
        _nameController.text, _emailController.text, _phoneController.text)) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => gotoSuccessPage(context)));
    }
  }

  Widget gotoSuccessPage(BuildContext context) {
    return Success_Page();
  }
}
