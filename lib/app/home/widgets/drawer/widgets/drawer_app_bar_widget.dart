import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CircleAvatar(
        backgroundColor: Colors.blue,
      ),
      title: Text(
        'Pedro Peterle',
        style: TextStyle(
          color: theme.colorScheme.onPrimary,
        ),
      ),
      subtitle: Text(
        'Active Status',
        style: TextStyle(color: theme.colorScheme.onSecondary),
      ),
    );
  }
}
