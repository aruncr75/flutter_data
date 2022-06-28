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
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return ScreenLogin();
                  // }));
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
  // String _requestid = "192836r9812709e172097";
  // String _userid = "Rjesh";
//   final cities = db.collection("cities");
// final data1 = <String, dynamic>{
//   "name": "San Francisco",
//   "state": "CA",
//   "country": "USA",
//   "capital": false,
//   "population": 860000,
//   "regions": ["west_coast", "norcal"]
// };
// cities.doc("SF").set(data1);

// final data2 = <String, dynamic>{
//   "name": "Los Angeles",
//   "state": "CA",
//   "country": "USA",
//   "capital": false,
//   "population": 3900000,
//   "regions": ["west_coast", "socal"],
// };
// cities.doc("LA").set(data2);

// final data3 = <String, dynamic>{
//   "name": "Washington D.C.",
//   "state": null,
//   "country": "USA",
//   "capital": true,
//   "population": 680000,
//   "regions": ["east_coast"]
// };
// cities.doc("DC").set(data3);

// final data4 = <String, dynamic>{
//   "name": "Tokyo",
//   "state": null,
//   "country": "Japan",
//   "capital": true,
//   "population": 9000000,
//   "regions": ["kanto", "honshu"]
// };
// cities.doc("TOK").set(data4);

// final data5 = <String, dynamic>{
//   "name": "Beijing",
//   "state": null,
//   "country": "China",
//   "capital": true,
//   "population": 21500000,
//   "regions": ["jingjinji", "hebei"],
// };
// cities.doc("BJ").set(data5);
  final docRef = await db.collection("cities");

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
