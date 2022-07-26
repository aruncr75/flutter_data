import 'package:flutter/material.dart';
import 'package:location/location.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [Text(DateTime.now().toString()),
          ElevatedButton(
            child: Text(
              "Click me",
            ),
            onPressed: () {
              location();
            },
          ),
        ],
      ),
    ));
  }
}




location() async {
  bool _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;
  Location location = new Location();

  LocationAccuracy? accuracy = LocationAccuracy.high;
  int? interval = 1000;
  double? distanceFilter = 0;

  location.changeSettings(
      accuracy: accuracy, interval: interval, distanceFilter: distanceFilter);
  // location.requestPermission();

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return;
    }
  }

//current location
  _locationData = await location.getLocation();
  print(_locationData.accuracy);

  //listen to location
  // location.onLocationChanged.listen((LocationData currentLocation) {
  //   print(currentLocation);
  // });
}
