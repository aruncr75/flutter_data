// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapp1/screens/login.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Test App")),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("data"),
            ElevatedButton(
                onPressed: () {
                  getdata();
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ScreenLogin();
                  }));
                },
                child: const Text("Click"))
          ],
        ),
      )),
    );
  }
}

Future<void> getdata() async {
  dynamic db = FirebaseFirestore.instance;
  String _requestid = "192836r9812709e172097";
  String _userid = "Rjesh";
  final docRef = await db.collection("/users/$_userid/$_requestid");

  final listener = await docRef.snapshots().listen(
    (event) async {
      for (var res in event.docChanges) {
        if (res.type == DocumentChangeType.modified) {
          print(" firestore triggers...");
          var jsonObj = await res.doc.data();
          print(jsonObj);
          String _city = "City: ${jsonObj['city'] ?? ['']}";
          String _name = "Name: ${jsonObj['name'] ?? ['']}";
          String _age = "Age: ${jsonObj['age'] ?? ['']}"; 
          showToast(_name+_city+_age);
        }
      }
    },
    onError: (error) => print("Listen failed: $error"),
  );
  await Future.delayed(const Duration(seconds: 10));
  listener.cancel();
}

void showToast(dynamic toast_msg) {
  // print('$webPosition $backgroundColor $webBgColor');
  Fluttertoast.showToast(
      msg: toast_msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 10,
      // backgroundColor: backgroundColor,
      textColor: Colors.white,
      fontSize: 16.0,
      // webBgColor: webBgColor,
      // webPosition: webPosition,
      webShowClose: true);
}
