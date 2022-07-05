import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenAdd extends StatelessWidget {
  ScreenAdd({Key? key}) : super(key: key);
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
            controller: _nameController,
            decoration: InputDecoration(border: OutlineInputBorder())),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
            controller: _ageController,
            decoration: InputDecoration(border: OutlineInputBorder())),
      ),
      ElevatedButton.icon(
          label: Text("Add Student"),
          onPressed: () {
            onAddStudentButtonPressed(
                ageConroller: _ageController, nameConroller: _nameController);
          },
          icon: Icon(Icons.add))
    ]);
  }
}

Future<void> onAddStudentButtonPressed({nameConroller, ageConroller}) async {
  final _name = nameConroller.text.trim();
  final _age = ageConroller.text.trim();
  if (_name.isEmpty || _age.isEmpty) {
    return;
  }
  print('$_name, $_age');
}
