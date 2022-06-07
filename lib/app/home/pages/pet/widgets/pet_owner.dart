import 'package:desafio_1/app/home/models/owner.dart';
import 'package:flutter/material.dart';

class PetOwnerWidget extends StatelessWidget {
  final Owner owner;
  final double marginTop;
  const PetOwnerWidget({
    super.key,
    required this.owner,
    this.marginTop = 0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      width: MediaQuery.of(context).size.width,
      color: theme.colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const CircleAvatar(),
            title: Text(
              owner.name,
            ),
            subtitle: Text(owner.type),
            trailing: Text(owner.date),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 8,
            ),
            child: Text(
              owner.reason,
            ),
          ),
        ],
      ),
    );
  }
}
