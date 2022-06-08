import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;
  const DrawerItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeController = HomeController.of(context);
    return ValueListenableBuilder(
        valueListenable: homeController.indexPage,
        builder: (context, currentIndex, _) {
          return SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(icon),
                  title: Text(title),
                  onTap: () {
                    homeController.setIndexPage(index);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  selected: currentIndex == index,
                  selectedColor: theme.colorScheme.onPrimary,
                )),
          );
        });
  }
}
