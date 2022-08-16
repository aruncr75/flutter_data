import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// final item =[1,2,3,4,5,6];

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  List<dynamic> items = List.generate(20, (index) => "item $index");
  final controller = ScrollController();
  int page = 1;
  int limit = 50;
  bool hasMore = true;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetch();
      }
    });
  }

  Future fetch() async {
    if (isLoading) return;
    isLoading = true;
    final url = Uri.parse(
        'http://jsonplaceholder.typicode.com/posts?_limit=$limit&_page=$page');
    final response = await http.get(url);
    // print(response.body);
    if (response.statusCode == 200) {
      final List<dynamic> newItems = json.decode(response.body);

      page++;
      setState(() {
        isLoading = false;
      });

      if (newItems.length < 50) {
        hasMore = false;
      }

      setState(() {
        items.addAll(newItems.map<String>((e) {
          print(e.toString());
          final number = e['id'];
          print(number);
          return 'item ${number.toString()}';
        }).toList());
      });
    } else {
      print("asdmasmdkamskldmaksmdklmaskldmas");
    }
    print(items);
  }
  // Future fetch() async {
  //   setState(() {
  //     items.addAll(["1", "2", "3", "4"]);
  //   });
  // }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future refresh() async {
    setState(() {
      isLoading = false;
      hasMore = true;
      page = 0;
      items.clear();
    });
         fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
            controller: controller,
            itemCount: items.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index < items.length) {
                print(index);
                final item = items[index];
                return ListTile(title: Text(item));
              } else {
                print("sxnjasnjnxajsnjnasjn");
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Center(
                      child: hasMore
                          ? CircularProgressIndicator()
                          : Text("No More Data to Load")),
                );
              }
            }),
      ),
    ));
  }
}
