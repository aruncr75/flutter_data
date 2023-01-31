import 'package:flutter/material.dart';

class SreenTransactions extends StatelessWidget {
  const SreenTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(child: Center(child: Text("SreenTransactions"))),
    );
  }
}
