import 'package:flutter/material.dart';

class PetOwnerWidget extends StatelessWidget {
  const PetOwnerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 520),
      width: MediaQuery.of(context).size.width,
      color: theme.colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          ListTile(
            leading: CircleAvatar(),
            title: Text(
              'endall Jenner',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('Owner'),
            trailing: Text('May 25, 2019'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            ),
          ),
        ],
      ),
    );
  }
}
