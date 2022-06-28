import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'local_notifications.dart';

class ScreenNotification extends StatefulWidget {
  const ScreenNotification({Key? key}) : super(key: key);

  @override
  State<ScreenNotification> createState() => _ScreenNotificationState();
}

class _ScreenNotificationState extends State<ScreenNotification> {
  String notificationMsg = "Waitng For Message";
  @override
  void initState() {
    super.initState();

    LocalNotificationService.initialize();

    FirebaseMessaging.instance.getInitialMessage().then((event) {
      if (event != null) {
        setState(() {
          notificationMsg =
              "${event.notification!.title},${event.notification!.body} this is coming from Terminated";
        });
      }
    });

    FirebaseMessaging.onMessage.listen((event) {
      LocalNotificationService.shownotification(event);
      setState(() {
        notificationMsg =
            "${event.notification!.title},${event.notification!.body} this is coming from foreground";
      });
    });

    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      setState(() {
        notificationMsg =
            "${event.notification!.title},${event.notification!.body} this is coming from Background";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: FloatingActionButton(onPressed: () {
            LocalNotificationService.initialize();
            LocalNotificationService.shownotificationClick();
          }),
        ),
        Center(child: Text("$notificationMsg")),
      ],
    ));
  }
}
