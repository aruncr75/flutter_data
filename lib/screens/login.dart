// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection("guest").snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:const Text("Go Back") ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     TextFormField(
          //       decoration: const InputDecoration(
          //           hintText: 'Enter user name',
          //           helperText: 'User Name',
          //           border: OutlineInputBorder()),
          //     ),
          //     TextFormField(
          //       decoration: const InputDecoration(
          //           hintText: 'Enter password',
          //           helperText: 'Password',
          //           border: OutlineInputBorder()),
          //     ),
          //     ElevatedButton(
          //         onPressed: () {
          //           // dataCollections();
          //         },
          //         child: const Text("Login")),
          //     // ignore: prefer_const_constructors
          //     Text("data"),
          //     Container(
          //         child: StreamBuilder<QuerySnapshot>(
          //       stream: users,
          //       builder: (
          //         BuildContext context,
          //         AsyncSnapshot<QuerySnapshot> snapshot,
          //       ) {
          //         if (snapshot.hasError) {
          //           return const Text("something went wrong");
          //         }
          //         if (snapshot.connectionState == ConnectionState.waiting) {
          //           return const Text("loading");
          //         }

          //         final data = snapshot.requireData;

          //         return
          //         ListView.builder(itemCount: data.size,
          //         itemBuilder:(context, index) {
          //           return Text("${data.docs[index]['name']}");
          //         });
          //       },
          //     ))
          //   ],
          // ),
        ),
      ),
    );
  }
}
