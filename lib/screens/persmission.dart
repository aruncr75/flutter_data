import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

List<dynamic> hasAccessId = [];

class ScreenPermission extends StatelessWidget {
  ScreenPermission({Key? key}) : super(key: key);

  int defaultPermi = 65295;

  static Map<String, dynamic> userAccessTypes = {
    "HAS_USER_MGMT": 0,
    "ADD_USER": 1,
    "UPD_USER": 2,
    "DEL_USER": 3,
    "HAS_INVOICE_MGMT": 4,
    "ADD_INVOICE": 5,
    "UPD_INVOICE": 6,
    "DEL_INVOICE": 7,
    "HAS_VISITOR_MGMT": 8,
    "ADD_VISITOR": 9,
    "UPD_VISITOR": 10,
    "DEL_VISITOR": 11,
    "HAS_SERVICE_MGMT": 12,
    "ADD_SERVICE_REQUEST": 13,
    "UPD_SERVICE_REQUEST": 14,
    "DEL_SERVICE_REQUEST": 15,
    "HAS_NOTICE_MGMT": 16,
    "ADD_NOTIFICATIONS": 17,
    "UPD_NOTIFICATIONS": 18,
    "DEL_NOTIFICATIONS": 19,
    "HAS_PROPERTY_MGMT": 20,
    "ADD_PROPERTY": 21,
    "UPD_PROPERTY": 22,
    "DEL_PROPERTY": 23,
    "IS_SU_ADMIN": 27,
    "CHANGE_USER_PERMISSION": 28,
    "ADD_ADMIN": 29,
    "IS_ADMIN": 30,
  };

  int permissions = 0;
  int defaultpermissions = 65295;
  List<int> bit = [0, 1, 2, 3, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  Widget build(BuildContext context) {
    // print(userAccessTypes.length);
    return ElevatedButton(
      child: Text("Click"),
      onPressed: () {
        // print(hasAccess(permissions: defaultpermissions, bit: 4));
        print(hasAccessId);

        // userAccessTypes.forEach((k, v) => print("Key : $k, Value : $v"));
        for (int i = 0; i < bit.length; i++) {
          int permi = setBit(permissions: permissions, bit: bit[i]);
          permissions = permi;
          // print(permissions);
        }

        for (int i = 0; i < 32; i++) {
          hasAccess(permissions: defaultpermissions, bit: i);
        }
        print(hasAccessId);
      },
    );
  }
}

setBit({permissions, bit}) {
  var mask = 1 << bit;
  return permissions |= mask;
}

const Map<String, dynamic> userAccessTypes = {
  "responseBody": [
    {"categorty_name": "HAS_USER_MGMT", "category_id": 0},
    {"categorty_name": "ADD_USER", "category_id": 1},
    {"categorty_name": "UPD_USER", "category_id": 2},
    {"categorty_name": "DEL_USER", "category_id": 3},
    {"categorty_name": "ADD_INVOICE", "category_id": 5},
    {"categorty_name": "UPD_INVOICE", "category_id": 6},
    {"categorty_name": "DEL_INVOICE", "category_id": 7},
    {"categorty_name": "HAS_VISITOR_MGMT", "category_id": 8},
    {"categorty_name": "ADD_VISITOR", "category_id": 9},
    {"categorty_name": "UPD_VISITOR", "category_id": 10},
    {"categorty_name": "DEL_VISITOR", "category_id": 11},
    {"categorty_name": "HAS_SERVICE_MGMT", "category_id": 12},
    {"categorty_name": "ADD_SERVICE_REQUEST", "category_id": 13},
    {"categorty_name": "UPD_SERVICE_REQUEST", "category_id": 14},
    {"categorty_name": "DEL_SERVICE_REQUEST", "category_id": 15},
    {"categorty_name": "HAS_NOTICE_MGMT", "category_id": 16},
    {"categorty_name": "ADD_NOTIFICATIONS", "category_id": 17},
    {"categorty_name": "UPD_NOTIFICATIONS", "category_id": 18},
    {"categorty_name": "DEL_NOTIFICATIONS", "category_id": 19},
    {"categorty_name": "HAS_PROPERTY_MGMT", "category_id": 20},
    {"categorty_name": "ADD_PROPERTY", "category_id": 21},
    {"categorty_name": "UPD_PROPERTY", "category_id": 22},
    {"categorty_name": "DEL_PROPERTY", "category_id": 23},
    {"categorty_name": "IS_SU_ADMIN", "category_id": 27},
    {"categorty_name": "CHANGE_USER_PERMISSION", "category_id": 28},
    {"categorty_name": "ADD_ADMIN", "category_id": 29},
    {"categorty_name": "IS_ADMIN", "category_id": 30},
  ],
};

hasAccess({permissions, bit}) {
  var mask = 1 << bit;

  if ((permissions & mask) != 0) {
    hasAccessId.add(bit);
  }
}
