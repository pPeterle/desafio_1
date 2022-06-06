import 'package:desafio_1/app/home/models/pet.dart';
import 'package:flutter/material.dart';

class PetDetailsWidget extends StatelessWidget {
  final Pet pet;
  const PetDetailsWidget({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 120,
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 450 - (120 / 2),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.background,
              blurRadius: 5,
              spreadRadius: 5,
            )
          ]),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pet.name,
                  style: theme.textTheme.headline4
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.male),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(pet.breed),
                Text("${pet.years} years old"),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(pet.location, style: theme.textTheme.caption)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
