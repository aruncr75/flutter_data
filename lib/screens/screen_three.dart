import 'package:flutter/material.dart';
import 'package:location/location.dart';

class ScreenThree extends StatefulWidget {
  ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenThree> {
  List _selecteCategorys = [];

  final Map<String, dynamic> _categories = {
    "responseBody": [
      {"category_name": "HAS_USER_MGMT", "category_id": 0},
      {"category_name": "ADD_USER", "category_id": 1},
      {"category_name": "UPD_USER", "category_id": 2},
      {"category_name": "DEL_USER", "category_id": 3},
      {"category_name": "HAS_INVOICE_MGMT", "category_id": 4},
      {"category_name": "ADD_INVOICE", "category_id": 5},
      {"category_name": "UPD_INVOICE", "category_id": 6},
      {"category_name": "DEL_INVOICE", "category_id": 7},
      {"category_name": "HAS_VISITOR_MGMT", "category_id": 8},
      {"category_name": "ADD_VISITOR", "category_id": 9},
      {"category_name": "UPD_VISITOR", "category_id": 10},
      {"category_name": "DEL_VISITOR", "category_id": 11},
      {"category_name": "HAS_SERVICE_MGMT", "category_id": 12},
      {"category_name": "ADD_SERVICE_REQUEST", "category_id": 13},
      {"category_name": "UPD_SERVICE_REQUEST", "category_id": 14},
      {"category_name": "DEL_SERVICE_REQUEST", "category_id": 15},
      {"category_name": "HAS_NOTICE_MGMT", "category_id": 16},
      {"category_name": "ADD_NOTIFICATIONS", "category_id": 17},
      {"category_name": "UPD_NOTIFICATIONS", "category_id": 18},
      {"category_name": "DEL_NOTIFICATIONS", "category_id": 19},
      {"category_name": "HAS_PROPERTY_MGMT", "category_id": 20},
      {"category_name": "ADD_PROPERTY", "category_id": 21},
      {"category_name": "UPD_PROPERTY", "category_id": 22},
      {"category_name": "DEL_PROPERTY", "category_id": 23},
      {"category_name": "IS_SU_ADMIN", "category_id": 27},
      {"category_name": "CHANGE_USER_PERMISSION", "category_id": 28},
      {"category_name": "ADD_ADMIN", "category_id": 29},
      {"category_name": "IS_ADMIN", "category_id": 30},
    ],

    "responseTotalResult":
        3 // Total result is 3 here becasue we have 3 categories in responseBody.
  };

  void _onCategorySelected(bool selected, category_id) {
    if (selected == true) {
      setState(() {
        _selecteCategorys.add(category_id);
      });
    } else {
      setState(() {
        _selecteCategorys.remove(category_id);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
   
    print(_selecteCategorys);
    return Scaffold(
      appBar: AppBar(
        title: const Text("widget.title"),
      ),
      body: ListView.builder(
          itemCount: _categories['responseBody'].length,
          itemBuilder: (BuildContext context, int index) {
            return CheckboxListTile(
              value: _selecteCategorys
                  .contains(_categories['responseBody'][index]['category_id']),
              onChanged: (bool? selected) {
                _onCategorySelected(selected!,
                    _categories['responseBody'][index]['category_id']);
              },
              title: Text(_categories['responseBody'][index]['category_name']),
            );
          }),
    );
  }
}
