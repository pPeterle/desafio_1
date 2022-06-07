import 'package:desafio_1/app/home/models/pet.dart';
import 'package:flutter/material.dart';

class PetImageWidget extends StatelessWidget {
  final Pet pet;
  const PetImageWidget({Key? key, required this.pet}) : super(key: key);

  static const double backgroundPetHeight = 450;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Container(
          color: theme.colorScheme.background,
          width: double.infinity,
          height: backgroundPetHeight,
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
        )
      ],
    );
  }
}
