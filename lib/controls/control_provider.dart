import 'package:testera/controls/main_control.dart';
import 'package:testera/controls/notification_control.dart';
import 'package:testera/controls/power_management_control.dart';

class ControlProvider {
  static get initializers => {
        MainControl: (_) => MainControl(),
        NotificationControl: (_) => NotificationControl(),
        PowerManagementControl: (_) => PowerManagementControl()
      };
}
