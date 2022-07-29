import 'package:flutter/material.dart';

import '../controls/main_control.dart';

class MainPage extends StatelessWidget {
  final control = MainControl();

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () => control.toPowerManagement(context),
            child: Text('Power Management'),
          ),
        ],
      ),
    );
  }
}
