import 'package:desafio_1/app/home/models/pet.dart';
import 'package:desafio_1/app/home/pages/pet/widgets/pet_details_widget.dart';
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
          Container(
            color: theme.colorScheme.background,
            width: double.infinity,
            height: 450,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Hero(
                tag: pet.image + pet.name,
                child: Image.network(
                  pet.image,
                  height: 300,
                ),
              ),
            ),
          ),
          SizedBox(
            height: kToolbarHeight,
            child: AppBar(
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.upload))
              ],
            ),
          ),
          PetDetailsWidget(pet: pet),
          PetOwnerWidget(
            owner: pet.owner,
          ),
        ],
      ),
    );
  }
}
