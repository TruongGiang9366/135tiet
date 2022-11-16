import 'package:appontap/src/DashBoard.dart';
import 'package:appontap/src/Profile.dart';
import 'package:flutter/material.dart';

class Practice_Page extends StatefulWidget {
  const Practice_Page({super.key});

  @override
  State<Practice_Page> createState() => _Practice_PageState();
}

class _Practice_PageState extends State<Practice_Page> {
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
                              "Ôn Luyện",
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
                            "Chương trình lịch sử lớp 12",
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
                                                text: "Lý thuyết Bài 1: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Sự hình thành trật tự thế giới mới sau chiến tranh thế giới thứ hai (1945 – 1949)",
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
                                                text: "Lý thuyết Bài 2: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Liên Xô và các nước Đông Âu (1945 - 2000). Liên Bang Nga (1991 - 2000)",
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
                                                text: "Lý thuyết Bài 3: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Các nước Đông Bắc Á",
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
                                                text: "Lý thuyết Bài 4: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Các nước Đông Nam Á và Ấn Độ",
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
                                                text: "Lý thuyết Bài 5: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Các nước châu Phi và Mĩ Latinh",
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
                                                text: "Lý thuyết Bài 6: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Nước Mĩ",
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
                                                text: "Lý thuyết Bài 7: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Tây Âu",
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
                                                text: "Lý thuyết Bài 8: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Nhật Bản",
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
                                                text: "Lý thuyết Bài 9: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Quan hệ quốc tế trong và sau thời kì chiến tranh lạnh",
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
                                                text: "Lý thuyết Bài 10: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Cách mạng khoa học-công nghệ và xu hướng toàn cầu hóa nửa sau thế kỉ XX",
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
                                                text: "Lý thuyết Bài 11: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Tổng kết lịch sử thế giới hiện đại từ năm 1945 đến năm 2000",
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
                                                text: "Lý thuyết Bài 12: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong trào dân tộc dân chủ ở Việt Nam từ năm 1919 đến năm 1925",
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
                                                text: "Lý thuyết Bài 13: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong trào dân tộc dân chủ ở Việt Nam từ năm 1925 đến năm 1930",
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
                                                text: "Lý thuyết Bài 14: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong trào cách mạng 1930-1935",
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
                                                text: "Lý thuyết Bài 15: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong trào dân chủ 1936-1939",
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
                                                text: "Lý thuyết Bài 16: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Phong trào giải phóng dân tộc và tổng khởi nghĩa tháng Tám (1939-1945). Nước Việt Nam Dân chủ Cộng hòa ra đời",
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
                                                text: "Lý thuyết Bài 17: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Nước Việt Nam Dân chủ Cộng hòa từ sau ngày 2-9-1945 đến trước ngày 19-12-1946",
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
                                                text: "Lý thuyết Bài 18: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Những năm đầu của cuộc kháng chiến toàn quốc chống thực dân Pháp (1946-1950)",
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
                                                text: "Lý thuyết Bài 19: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Bước phát triển của cuộc kháng chiến toàn quốc chống thực dân Pháp (1951-1953)",
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
                                                text: "Lý thuyết Bài 20: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Cuộc kháng chiến toàn quốc chống thực dân Pháp kết thúc (1953-1954)",
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
                                                text: "Lý thuyết Bài 21: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Xây dựng xã hội chủ nghĩa ở miền Bắc, đấu tranh chống đế quốc Mĩ và chính quyền Sài Gòn ở miền Nam (1954-1965)",
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
                                                text: "Lý thuyết Bài 22: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Nhân dân hai miền trực tiếp chiến đấu chống đế quốc Mĩ xâm lược, nhân dân miền bắc vừa chiến đấu vừa sản xuất (1965-1973)",
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
                                                text: "Lý thuyết Bài 23: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Khôi phục và phát triển kinh tế-xã hội ở miền bắc, giải phóng hoàn toàn miền Nam (1973-1975)",
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
                                                text: "Lý thuyết Bài 24: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Việt Nam trong năm đầu sau thắng lợi của cuộc kháng chiến chống Mĩ, cứu nước năm 1975",
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
                                                text: "Lý thuyết Bài 25: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Việt Nam xây dựng chủ nghĩa xã hội và đấu tranh bảo vệ tổ quốc (1976-1986)",
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
                                                text: "Lý thuyết Bài 26: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Đất nước trên đường đổi mới đi lên chủ nghĩa xã hội (1986-2000)",
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
                                                text: "Lý thuyết Bài 27: ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color(0xff070707),
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Đất nước trên đường đổi mới đi lên chủ nghĩa xã hội (1986-2000)",
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
