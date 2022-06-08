import 'package:desafio_1/app/home/models/pet.dart';
import 'package:flutter/material.dart';

class PetDetailsWidget extends StatelessWidget {
  final Pet pet;
  final double marginTop;
  const PetDetailsWidget({
    Key? key,
    required this.pet,
    this.marginTop = 0,
  }) : super(key: key);

  static const height = 140;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 120,
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: marginTop - height / 2,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
      alignment: Alignment.center,
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
    );
  }
}
