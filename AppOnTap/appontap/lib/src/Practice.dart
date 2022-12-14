import 'package:appontap/src/DashBoard.dart';
import 'package:appontap/src/Lesson.dart';
import 'package:appontap/src/Profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Practice_Page extends StatefulWidget {
  const Practice_Page({super.key});

  @override
  State<Practice_Page> createState() => _Practice_PageState();
}

class _Practice_PageState extends State<Practice_Page> {
  Future addData(String baihoc) async {
    await FirebaseFirestore.instance.collection('users').add({
      "Bai Hoc": baihoc,
    });
  }

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
                        padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DashBoard_Page())),
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "??n Luy???n",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(130, 0, 0, 0),
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
                alignment: Alignment.topLeft,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Center(
                          child: Text(
                            "Ch????ng tr??nh l???ch s??? l???p 12",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: Wrap(
                          spacing: 20.0,
                          runSpacing: 20.0,
                          children: [
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Lesson_Page())),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 1: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "S??? h??nh th??nh tr???t t??? th??? gi???i m???i sau chi???n tranh th??? gi???i th??? hai (1945 ??? 1949)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 2: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Li??n X?? v?? c??c n?????c ????ng ??u (1945 - 2000). Li??n Bang Nga (1991 - 2000)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 3: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "C??c n?????c ????ng B???c ??",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 4: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "C??c n?????c ????ng Nam ?? v?? ???n ?????",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 5: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "C??c n?????c ch??u Phi v?? M?? Latinh",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 6: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "N?????c M??",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 7: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "T??y ??u",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 8: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Nh???t B???n",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 9: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Quan h??? qu???c t??? trong v?? sau th???i k?? chi???n tranh l???nh",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 10: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "C??ch m???ng khoa h???c-c??ng ngh??? v?? xu h?????ng to??n c???u h??a n???a sau th??? k??? XX",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 11: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "T???ng k???t l???ch s??? th??? gi???i hi???n ?????i t??? n??m 1945 ?????n n??m 2000",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 12: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong tr??o d??n t???c d??n ch??? ??? Vi???t Nam t??? n??m 1919 ?????n n??m 1925",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 13: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong tr??o d??n t???c d??n ch??? ??? Vi???t Nam t??? n??m 1925 ?????n n??m 1930",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 14: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong tr??o c??ch m???ng 1930-1935",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 15: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong tr??o d??n ch??? 1936-1939",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 85.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 16: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong tr??o gi???i ph??ng d??n t???c v?? t???ng kh???i ngh??a th??ng T??m (1939-1945). N?????c Vi???t Nam D??n ch??? C???ng h??a ra ?????i",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 17: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "N?????c Vi???t Nam D??n ch??? C???ng h??a t??? sau ng??y 2-9-1945 ?????n tr?????c ng??y 19-12-1946",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 18: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Nh???ng n??m ?????u c???a cu???c kh??ng chi???n to??n qu???c ch???ng th???c d??n Ph??p (1946-1950)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 19: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "B?????c ph??t tri???n c???a cu???c kh??ng chi???n to??n qu???c ch???ng th???c d??n Ph??p (1951-1953)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 20: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Cu???c kh??ng chi???n to??n qu???c ch???ng th???c d??n Ph??p k???t th??c (1953-1954)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 87.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 21: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "X??y d???ng x?? h???i ch??? ngh??a ??? mi???n B???c, ?????u tranh ch???ng ????? qu???c M?? v?? ch??nh quy???n S??i G??n ??? mi???n Nam (1954-1965)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 87.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 22: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Nh??n d??n hai mi???n tr???c ti???p chi???n ?????u ch???ng ????? qu???c M?? x??m l?????c, nh??n d??n mi???n b???c v???a chi???n ?????u v???a s???n xu???t (1965-1973)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 23: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Kh??i ph???c v?? ph??t tri???n kinh t???-x?? h???i ??? mi???n b???c, gi???i ph??ng ho??n to??n mi???n Nam (1973-1975)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 24: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Vi???t Nam trong n??m ?????u sau th???ng l???i c???a cu???c kh??ng chi???n ch???ng M??, c???u n?????c n??m 1975",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 25: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Vi???t Nam x??y d???ng ch??? ngh??a x?? h???i v?? ?????u tranh b???o v??? t??? qu???c (1976-1986)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 26: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "?????t n?????c tr??n ???????ng ?????i m???i ??i l??n ch??? ngh??a x?? h???i (1986-2000)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                width: 320.0,
                                height: 80.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Container(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "L?? thuy???t B??i 27: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "?????t n?????c tr??n ???????ng ?????i m???i ??i l??n ch??? ngh??a x?? h???i (1986-2000)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xFFe0e0e0)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
          ),
        ),
      ),
    );
  }
}
