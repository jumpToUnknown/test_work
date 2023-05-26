import 'package:flutter/material.dart';
import 'package:test_work/repositories/users/users.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: const Image(image: AssetImage('assets/images/user_icon.png')),
      title: Text(
        user.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        user.email,
        style: theme.textTheme.labelSmall,
      ),
      onTap: () {},
    );
  }
}
