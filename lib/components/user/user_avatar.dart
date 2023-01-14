import 'package:flutter_control/control.dart';

import '../../entities/user/user.dart';

class UserAvatar extends StatelessWidget {
  final User user;

  const UserAvatar({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('${user.name} ${user.surname}');
  }
}
