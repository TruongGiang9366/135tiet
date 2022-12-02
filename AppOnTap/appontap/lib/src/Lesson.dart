import 'package:appontap/src/read%20data/get_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Lesson_Page extends StatefulWidget {
  const Lesson_Page({super.key});

  @override
  State<Lesson_Page> createState() => _Lesson_PageState();
}

class _Lesson_PageState extends State<Lesson_Page> {
  final user = FirebaseAuth.instance.currentUser!;
  List<String> docIDs = [];

  Future getDocId() async {
    await FirebaseFirestore.instance
        .collection('users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference);
              docIDs.add(document.reference.id);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffDAB56F),
          title: Text(
            "Bài lý thuyết 1",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sự hình thành trật tự thế giới mới sau chiến tranh thế giới thứ hai (1945 – 1949)",
                style: TextStyle(fontSize: 24, color: Colors.blueAccent),
              ),
              Expanded(
                  child: FutureBuilder(
                future: getDocId(),
                builder: ((context, snapshot) {
                  return ListView.builder(
                    itemCount: docIDs.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: GetData(documetnId: docIDs[index]),
                      );
                    }),
                  );
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
