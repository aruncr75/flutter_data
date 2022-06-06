import 'package:flutter/material.dart';

class ScreenAccount extends StatelessWidget {
   final list = [DropdownMenuItem(value:"Apple" ,child: Text("apple"),) ,
                 DropdownMenuItem(value:"Orange" ,child: Text("O"),)];

  @override
  Widget build(BuildContext context) {  
    return Container(
      child: Center(child: DropdownButtonFormField(
            hint: Text("select"),
        items: list,
        onChanged: (value) {
          print(value);
        },
      )),
      
    );
  }
}