import 'package:flutter/material.dart';
import 'package:flutter_control/control.dart';

import '../controls/notification_control.dart';

class NotificationPage extends SingleControlWidget<NotificationControl>
    with RouteControl {
  NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: control.sendNotification,
          child: const Text(
            'Send notification',
          ),
        ),
      ),
    );
  }
}
