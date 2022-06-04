import 'package:flutter/material.dart';

class DrawerFooterWidget extends StatelessWidget {
  const DrawerFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IntrinsicHeight(
      child: Row(
        children: [
          Icon(
            Icons.settings,
            color: theme.colorScheme.onSecondary,
          ),
          const SizedBox(width: 8),
          Text(
            "Settings",
            style:
                TextStyle(color: theme.colorScheme.onSecondary, fontSize: 16),
          ),
          Container(
            width: 1,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            color: theme.colorScheme.onSecondary.withOpacity(.5),
          ),
          Text(
            "Log out",
            style:
                TextStyle(color: theme.colorScheme.onSecondary, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
