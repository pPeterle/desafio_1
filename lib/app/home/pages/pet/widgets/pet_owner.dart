import 'package:desafio_1/app/home/models/owner.dart';
import 'package:flutter/material.dart';

class PetOwnerWidget extends StatelessWidget {
  final Owner owner;
  const PetOwnerWidget({super.key, required this.owner});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 520),
      width: MediaQuery.of(context).size.width,
      color: theme.colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const CircleAvatar(),
            title: Text(
              owner.name,
              style: const TextStyle(color: Colors.black),
            ),
            subtitle: Text(owner.type),
            trailing: Text(owner.date),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Text(
              owner.reason,
            ),
          ),
        ],
      ),
    );
  }
}
