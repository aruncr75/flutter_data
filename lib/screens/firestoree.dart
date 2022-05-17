// ignore_for_file: avoid_init_to_null

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'dart:async';
// import 'apiConfig.dart' as APICONFIG;

// https://stackoverflow.com/questions/59529177/how-to-read-data-from-firestore-flutter
// to refer the above link.

var loginTimer = null;
var logoutTimer = null;
var login = [];
var logout = [];
Future<void> firestoreConn(liveDataCb) async {
  FirebaseOptions firebaseOptionsQA = const FirebaseOptions(
      measurementId: "G-1CFXP1QDJS",
      appId: "1:9257400",
      apiKey: "AIzaSyD_",
      authDomain: "envi-firebaseapp.com",
      projectId: "envi-user",
      storageBucket: "envipot.com",
      messagingSenderId: "6043811");


  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //       options: APICONFIG.ENVIRONMENT == "QA"
  //           ? firebaseOptionsQA
  //           : firebaseOptionsProd);
  // } else {
  //   await Firebase.initializeApp();
  // }

  String driverStatCollection = 'admin/driver-log-in-out/activityInfo';
  final CollectionReference drvLoginLoutcollectionRef =
      FirebaseFirestore.instance.collection(driverStatCollection);
  listenToNotificationStream(drvLoginLoutcollectionRef);

}


Future<void> listenToNotificationStream(collectionRef) async {
  try {
    print('login/logout streams');
    DateTime now = new DateTime.now();
    final startAtTimestamp = Timestamp.fromMillisecondsSinceEpoch(
        now.millisecondsSinceEpoch - 15 * 60000); // 15min:  //(5.3*3600000)

    final notificationStream = await collectionRef
        .orderBy('at', descending: false)
        .startAt([startAtTimestamp]).snapshots();

    notificationStream.listen((result) {
      for (var res in result.docChanges) {
        if (res.type == DocumentChangeType.modified ||
            res.type == DocumentChangeType.added) {
          print(" firestore triggers...");

          var jsonObj = res.doc.data();
          print(" objects ...");
          print(jsonObj);
          var encodedJson = json.encode(jsonObj, toEncodable: myEncode);
          var jsonData = json.decode(encodedJson);

          var toast_msg = jsonData['msg'];

          if (!logout.contains(toast_msg)) logout.add(toast_msg);
        }
      }
      if (logout.length > 0) {
        var reversedList = new List.from(logout.reversed);
        var logoutstr = reversedList.toString().replaceAll(',', "\n\n");
        if (logoutTimer != null) {
          logoutTimer.cancel();
        }

        logoutTimer = Timer(
            Duration(seconds: 5),
            () => showToast(
                logoutstr, Color.fromARGB(255, 3, 87, 24), "#b80419", 'left'));
      }
    });
  } catch (e) {
    debugPrint("ERROR - $e");
    return null;
  }
}

dynamic myEncode(dynamic item) {
  if (item is Timestamp) {
    return item.toString();
  }
  return item;
}

void showToast(dynamic toast_msg, dynamic backgroundColor, dynamic webBgColor,
    dynamic webPosition) {
  print('$webPosition $backgroundColor $webBgColor');

  logout = [];
  if (logoutTimer != null) {
    logoutTimer.cancel();
  }
  logoutTimer = null;

  Fluttertoast.showToast(
      msg: toast_msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 10,
      backgroundColor: backgroundColor,
      textColor: Colors.white,
      fontSize: 16.0,
      webBgColor: webBgColor,
      webPosition: webPosition,
      webShowClose: true);
}