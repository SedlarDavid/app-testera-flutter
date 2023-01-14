import 'package:flutter_control/control.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationControl extends BaseControl {
  late final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void onInit(Map args) {
    super.onInit(args);

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const initializationSettingsAndroid = AndroidInitializationSettings(
      'ic_launcher',
    );
    final initializationSettingsIOS = DarwinInitializationSettings(
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );
    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    flutterLocalNotificationsPlugin
        .initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    )
        .then((_) {
      ScaffoldMessenger.maybeOf(ControlScope.root.context!)?.showSnackBar(
        const SnackBar(
          content: Text('Initialized'),
        ),
      );
    });
  }

  Future<void> sendNotification() async {
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'testChannelId',
      'testChannel',
      channelDescription: 'testChannelDescription',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      'plain title',
      'plain body',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }

  void onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) {
    debugPrint('$id $title $body $payload');
  }

  void onDidReceiveNotificationResponse(NotificationResponse details) {
    debugPrint(details.payload);
  }
}
