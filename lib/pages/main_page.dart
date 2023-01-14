import 'package:flutter/material.dart';
import 'package:flutter_control/control.dart';
import 'package:testera/page_provider.dart';

import '../controls/main_control.dart';

class MainPage extends SingleControlWidget<MainControl> with RouteControl {
  MainPage({Key? key}) : super(key: key);

  @override
  MainControl get control => MainControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () => routeOf<PowerManagementPage>()?.openRoute(),
            child: Text(localize('power_management')),
          ),
          TextButton(
            onPressed: () => routeOf<NotificationPage>()?.openRoute(),
            child: Text(localize("notifications")),
          ),
        ],
      ),
    );
  }
}
