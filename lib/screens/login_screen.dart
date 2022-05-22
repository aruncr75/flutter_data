// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isDataMatched = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              TextFormField(
                validator: ((_) {
                  if (_isDataMatched) {
                    return null;
                  } else {
                    return "Error";
                  }
                }),
                decoration: const InputDecoration(
                    hintText: "Enter Username", border: OutlineInputBorder()),
                controller: _usernameController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Password", border: OutlineInputBorder()),
                obscureText: true,
                controller: _passwordController,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Visibility(
                    visible: !_isDataMatched,
                    child: Text(
                      "username and password are wrong",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // saveDataToStotage();
                        _formKey.currentState!.validate();
                        checkLogin(context);
                        print(_usernameController.text);
                      },
                      child: const Text('Login'))
                ],
              ),
            ]),
          ),
        )));
  }

  // Future<void> saveDataToStotage() async {
  checkLogin(BuildContext context) {
    if (_usernameController.text == _passwordController.text) {
    } else {
      const _errorMessage = "username and password does not match";
      //snackbar
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 5),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(left: 50, right: 50),
          content: Text(_errorMessage)));
      //alert dialouge
      showDialog(
          context: context,
          builder: (context1) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text(_errorMessage),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context1).pop();
                    },
                    child: const Text("Close"))
              ],
            ); //one more simple dialoge
          });
      //show text
      setState(() {
        _isDataMatched = false;
      });
    }
  }
}
