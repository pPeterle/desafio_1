import 'package:desafio_1/app/home/widgets/drawer/widgets/drawer_app_bar_widget.dart';
import 'package:desafio_1/app/home/widgets/drawer/widgets/drawer_footer_widget.dart';
import 'package:desafio_1/app/home/widgets/drawer/widgets/drawer_list_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Container(
        color: theme.colorScheme.primary,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            DrawerHeaderWidget(),
            DrawerListWidget(),
            DrawerFooterWidget(),
          ],
        ),
      ),
    );
  }
}
