import 'package:desafio_1/app/home/models/pet.dart';
import 'package:desafio_1/app/home/pages/pet/widgets/pet_details_widget.dart';
import 'package:desafio_1/app/home/pages/pet/widgets/pet_image_widget.dart';
import 'package:desafio_1/app/home/pages/pet/widgets/pet_owner.dart';
import 'package:flutter/material.dart';

class PetListWidget extends StatelessWidget {
  final Pet pet;
  const PetListWidget({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Stack(
        children: [
          PetImageWidget(pet: pet),
          PetDetailsWidget(pet: pet),
          PetOwnerWidget(
            owner: pet.owner,
          ),
        ],
      ),
    );
  }
}
