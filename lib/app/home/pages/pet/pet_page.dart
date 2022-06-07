import 'package:desafio_1/app/home/models/pet.dart';
import 'package:desafio_1/app/home/pages/pet/widgets/pet_list_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/pet_actions_widget.dart';

class PetPage extends StatelessWidget {
  final Pet pet;

  const PetPage({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Material(
        color: theme.colorScheme.surface,
        child: Column(
          children: [
            Expanded(
              child: PetListWidget(pet: pet),
            ),
            const DetailsActionsWidget()
          ],
        ),
      ),
    );
  }
}
