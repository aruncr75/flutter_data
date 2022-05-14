// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AR dev',
      color: const Color.fromARGB(179, 255, 193, 7),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: Center(
            child: Container(
                // margin: const EdgeInsets.all(100), 
                margin: const EdgeInsets.only(right:50),
                padding: const EdgeInsets.all(10),
                // color: Colors.white,
                decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(
                    color: Color.fromARGB(255, 67, 58, 58),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset:Offset( 10 ,10),
                  )],
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(247, 234, 226, 224) ,
                    border: Border.all(width: 3,
                      
                  color: const Color.fromARGB(255, 229, 229, 229),
                )),
                
                width: 200,
                // width: MediaQuery.of(context).size.width,
                height: 200,
                
                // ignore: prefer_const_constructors
                child: Center(child: const Text('Hello World'))),
          ),
        ),
      ),
    ); // insted of this we can directly call Material Appinside runApp
    // runApp(const MaterialApp(),);
  }
}
