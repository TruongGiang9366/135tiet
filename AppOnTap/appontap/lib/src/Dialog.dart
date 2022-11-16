import 'package:appontap/src/test1.dart';
import 'package:appontap/src/testscore.dart';
import 'package:flutter/material.dart';


class Dialog2{
  imformations(BuildContext context, String title, String description){
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: [Text(description)],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => testscore_Page()),
                );
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }
}