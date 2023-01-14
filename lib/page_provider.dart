import 'package:flutter/cupertino.dart';
import 'package:flutter_control/control.dart';
import 'package:testera/pages/notification_page.dart';
import 'package:testera/pages/power_management_page.dart';

export 'package:testera/pages/notification_page.dart';
export 'package:testera/pages/power_management_page.dart';

class PageProvider {
  static get cupertinoRoute => (builder, settings) =>
      CupertinoPageRoute(builder: builder, settings: settings);

  static get materialRoute => (builder, settings) =>
      MaterialPageRoute(builder: builder, settings: settings);

  static get routes => {
        ControlRoute.build<NotificationPage>(
            builder: (_) => NotificationPage()),
        ControlRoute.build<PowerManagementPage>(
            builder: (_) => PowerManagementPage()),
      };
}
