// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:firstapp1/widgets/wappbar.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'home_screen.dart';

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
        appBar: CustomAppBar(),
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              TextFormField(
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return "value is empty";
                  } else {
                    return null;
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
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return "value is empty";
                  } else {
                    return null;
                  }
                }),
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
                        if (_formKey.currentState!.validate()) {
                          checkLogin(context);
                        }
                      },
                      child: const Text('Login'))
                ],
              ),
            ]),
          ),
        )));
  }

  // Future<void> saveDataToStotage() async {
  checkLogin(BuildContext context) async{
    if (_usernameController.text == _passwordController.text) {
     await sharedp.setString('name', _usernameController.text);
      print(sharedp.getString('name'));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => ScreenHome()));
    } 
  }
}
