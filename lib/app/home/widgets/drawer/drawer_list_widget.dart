import 'package:flutter/material.dart';

List<Map> drawerItems = [
  {'icon': Icons.home, 'title': 'Adoption'},
  {'icon': Icons.mail, 'title': 'Donation'},
  {'icon': Icons.add, 'title': 'Add pet'},
  {'icon': Icons.favorite, 'title': 'Favorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': Icons.home, 'title': 'Profile'},
];

class DrawerListWidget extends StatefulWidget {
  const DrawerListWidget({Key? key}) : super(key: key);

  @override
  State<DrawerListWidget> createState() => _DrawerListWidgetState();
}

class _DrawerListWidgetState extends State<DrawerListWidget> {
  String? titleSelected = 'Adoption';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    selected: titleSelected == item['title'],
                    selectedColor: theme.colorScheme.onPrimary,
                  )),
            ),
          )
          .toList(),
    );
  }
}
