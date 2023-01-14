import 'package:flutter_control/control.dart';

class FlutterControlControl extends BaseControl {
  final num = FieldControl<int>(0);

  void increaseNum() => num.setValue(num.value! + 1);
}
