import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  DateTime dateTime = DateTime.now();
  final _requestedtimeslotController = TextEditingController();
  DateTime? requestedtimeslot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Date";
                } else {
                  return null;
                }
              },
              showCursor: false,
              readOnly: true,
              style: const TextStyle(fontSize: 16),
              controller: _requestedtimeslotController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                helperText: " ",
                labelText: "Date and Time",
                hintText: "Date and Time",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onTap: () async {
               

                requestedtimeslot = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));

                     final initialTime = TimeOfDay(hour: 9, minute: 0);
                final newTime = await showTimePicker(
                  context: context,
                  initialTime: initialTime,
                );

                print(newTime);

                if (requestedtimeslot != null) {
                 dateTime = DateTime(
        requestedtimeslot!.year,
        requestedtimeslot!.month,
        requestedtimeslot!.day,
        newTime!.hour,
        newTime.minute,
      );          
                  setState(() {
                    _requestedtimeslotController.text = DateFormat.yMMMMEEEEd().add_jm().format(dateTime);
                    // _assetExpiryController.text = DateFormat('dd/MM/yyyy HH:mm').format(dateTime);
                  });
                } else {
                  print("Date is not selected");
                }
              },
            ),
            Text(DateTime.now().toString()),
            ElevatedButton(
              child: Text(
                "Click me",
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
