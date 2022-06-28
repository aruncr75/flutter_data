import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void initialize() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    _notificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String? payload) {
      if (payload != null) {
        debugPrint('notification payload: ' + payload);
      }
    });
  }

  static shownotification(RemoteMessage message) {
    final notificationDetail = NotificationDetails(
        android: AndroidNotificationDetails(
      "channelid",
      "channel_name",
       importance: Importance.max,
            priority: Priority.high,
            sound: RawResourceAndroidNotificationSound('a_long_cold_sting')
    ));
    _notificationsPlugin.show(
        DateTime.now().second,
        message.notification!.title,
        message.notification!.body,
        notificationDetail);
  }

  static void shownotificationClick() async{
    // var scheduledNotificationDateTime =
    //     DateTime.now().add(Duration(seconds: 10));
    final notificationDetail = NotificationDetails(
        android: AndroidNotificationDetails("channelid", "channel_name",
            importance: Importance.max,
            priority: Priority.high,
            sound: RawResourceAndroidNotificationSound('a_long_cold_sting')
            ));
    await _notificationsPlugin.show(
        DateTime.now().second, "hello", "There!", notificationDetail,);
  }
}
