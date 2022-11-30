import 'package:appontap/main_page.dart';
import 'package:appontap/src/Login_Page.dart';
import 'package:flutter/material.dart';

class WelcomeApp extends StatefulWidget {
  @override
  State<WelcomeApp> createState() => _WelcomeAppState();
}

class _WelcomeAppState extends State<WelcomeApp> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.grey[300],
      minimumSize: Size(185, 37),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background1.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Chào Mừng!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "Đến với Lịch sử Việt Nam",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: raisedButtonStyle,
                          onPressed: onContinue,
                          child: Text('Tiếp Tục'),
                        )
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onContinue() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => gotoLoginPage(context)));
  }

  Widget gotoLoginPage(BuildContext context) {
    return const MainPage();
  }
}
