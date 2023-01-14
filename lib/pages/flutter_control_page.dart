import 'package:flutter_control/control.dart';
import 'package:testera/theme.dart';

import '../controls/flutter_control_control.dart';

class FlutterControlPage extends SingleControlWidget<FlutterControlControl>
    with RouteControl, ThemeProvider<UITheme> {
  FlutterControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: SizedBox(
          width: theme.device.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ControlBuilder<int>(
                control: control.num,
                builder: (context, value) => Text(value.toString()),
              ),
              SizedBox(
                height: theme.paddingHalf,
              ),
              TextButton(
                onPressed: control.increaseNum,
                child: Text(
                  'Num up!',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
