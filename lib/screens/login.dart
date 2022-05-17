// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'firestoree.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection("/users/Rajesh/626a0e81a4c675f6fd850ce6").snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter user name',
                    helperText: 'User Name',
                    border: OutlineInputBorder()),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter password',
                    helperText: 'Password',
                    border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () {
                    // dataCollections();
                  },
                  child: const Text("Login")),
              // ignore: prefer_const_constructors
              Text("data"),
              Container(
                  child: StreamBuilder<QuerySnapshot>(
                stream: users,
                builder: (
                  BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot,
                ) {
                  if (snapshot.hasError) {
                    return const Text("something went wrong");
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text("loading");
                  }

                  final data = snapshot.requireData;

                  return Text(data.size.toString());
                      
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

// Future<void> dataCollections() async {
//   String driverStatCollection = '/users/Rajesh/626a0e81a4c675f6fd850ce6';
//   final CollectionReference drvLoginLoutcollectionRef =
//       FirebaseFirestore.instance.collection(driverStatCollection);
//   final notificationStream =
//       drvLoginLoutcollectionRef.orderBy('at', descending: false).snapshots();
//   print(
//       "________________________________________________________________________________");
//   print(notificationStream);
//   notificationStream.listen((result) {
//     for (var res in result.docChanges) {
//       if (res.type == DocumentChangeType.modified ||
//           res.type == DocumentChangeType.added) {
//         print(" firestore triggers......");
//           var jsonObj = res.doc.data();
//           print(" objects ...");
//           print(jsonObj);
//           // var encodedJson = json.encode(jsonObj, toEncodable: myEncode);
//           // var jsonData = json.decode(encodedJson);

//           // var toast_msg = jsonData['msg'];

        
//       }
//     }
//   });
// }
