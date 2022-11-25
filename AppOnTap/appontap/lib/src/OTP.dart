import 'dart:async';

import 'package:appontap/src/blogs/login_blog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:appontap/src/DashBoard.dart';
import 'package:pinput/pinput.dart';

class OTP_Page extends StatefulWidget {
  final String phone;
  OTP_Page(this.phone);
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTP_Page> {
  int start = 60;
  LoginBloc bloc = new LoginBloc();
  TextEditingController _phonenumberController = new TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String? _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(20),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('OTP Verification',
            style: TextStyle(color: Colors.black, fontSize: 24)),
        backgroundColor: Color(0xffDAB56F),
      ),
      body: Stack(children: [
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
                errorText: snapshot.hasError ? snapshot.error.toString() : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefix: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    '+84',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                suffixIcon: InkWell(
                  onTap: () {
                    startTimer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 15,
                    ),
                    child: Text(
                      "Send",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                labelStyle: TextStyle(color: Color(0xff888888), fontSize: 15),
              ),
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150),
              // child: Center(
              //   child: Text(
              //     'Verify +84-${widget.phone}',
              //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              //   ),
              // ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                controller: _pinPutController,
                pinAnimationType: PinAnimationType.fade,
                onSubmitted: (pin) async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: _verificationCode!, smsCode: pin))
                        .then((value) async {
                      if (value.user != null) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashBoard_Page()),
                            (route) => false);
                      }
                    });
                  } catch (e) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.toString())));
                  }
                },
              ),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Thời gian còn lại của OTP là: ",
                  style: TextStyle(fontSize: 16, color: Colors.blue)),
              TextSpan(
                  text: "00:$start ",
                  style: TextStyle(fontSize: 16, color: Colors.red)),
              TextSpan(
                  text: "giây",
                  style: TextStyle(fontSize: 16, color: Colors.blue)),
            ]))
          ],
        ),
      ]),
    );
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+1${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => DashBoard_Page()),
                  (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String? verficationID, int? resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 60));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verifyPhone();
  }

  void startTimer() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }
}
