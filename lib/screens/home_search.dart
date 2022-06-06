import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screenSearch extends StatelessWidget {
 

  final list = ['Apple', 'Orange', 'cherry'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: DropdownButtonFormField(
            hint: Text("select "),
        items: list.map((e) {
          return DropdownMenuItem(value: e, child: Text(e));
        }).toList(),
        onChanged: (value) {
          print(value);
        },
      )),
    );
  }
}
