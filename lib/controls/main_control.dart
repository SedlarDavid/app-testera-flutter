import 'package:flutter/material.dart';
import 'package:testera/pages/power_management_page.dart';

class MainControl {
  void toPowerManagement(BuildContext context) => Navigator.push(
        context,
        PowerManagementPage.route,
      );
}