import 'package:desafio_1/app/home/controllers/app_controller.dart';
import 'package:flutter/material.dart';

class DrawerFooterWidget extends StatelessWidget {
  const DrawerFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appController = AppController.of(context);
    return IntrinsicHeight(
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: theme.colorScheme.onSecondary,
              ),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {},
              child: Text(
                "Settings",
                style: TextStyle(
                  color: theme.colorScheme.onSecondary,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 1,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              color: theme.colorScheme.onSecondary.withOpacity(.5),
            ),
            TextButton(
              onPressed: () {
                appController.toggleTheme();
              },
              child: Text(
                "Log out",
                style: TextStyle(
                  color: theme.colorScheme.onSecondary,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
