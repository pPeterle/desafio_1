import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class DrawerListWidget extends StatefulWidget {
  const DrawerListWidget({Key? key}) : super(key: key);

  @override
  State<DrawerListWidget> createState() => _DrawerListWidgetState();
}

class _DrawerListWidgetState extends State<DrawerListWidget> {
  String? titleSelected = 'Adoption';

  List<Map> drawerItems = [
    {'icon': Icons.home, 'title': 'Adoption', 'index': 0},
    {'icon': Icons.mail, 'title': 'Donation', 'index': 1},
    {'icon': Icons.add, 'title': 'Add pet', 'index': 2},
    {'icon': Icons.favorite, 'title': 'Favorites', 'index': 3},
    {'icon': Icons.message, 'title': 'Messages', 'index': 4},
    {'icon': Icons.person, 'title': 'Profile', 'index': 5},
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeController = HomeController.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: drawerItems
          .map(
            (item) => SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Material(
                  color: Colors.transparent,
                  child: ListTile(
                    leading: Icon(item['icon']),
                    title: Text(item['title']),
                    onTap: () {
                      setState(() {
                        titleSelected = item['title'];
                        homeController.setIndexPage(item['index']);
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    selected: titleSelected == item['title'],
                    selectedColor: theme.colorScheme.onPrimary,
                  )),
            ),
          )
          .toList(),
    );
  }
}
