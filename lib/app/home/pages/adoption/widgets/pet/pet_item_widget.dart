import 'package:desafio_1/app/home/models/pet.dart';
import 'package:desafio_1/app/home/pages/pet/pet_page.dart';
import 'package:flutter/material.dart';

class PetItemWidget extends StatelessWidget {
  final Pet pet;

  const PetItemWidget({Key? key, required this.pet}) : super(key: key);

  final double catHeight = 180;
  final double backgroundCatHeight = 160;
  final double backgroundTextHeight = 120;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PetPage(pet: pet),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: backgroundTextHeight,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: backgroundCatHeight,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Hero(
                          tag: pet.image + pet.name,
                          child: Image.network(
                            pet.image,
                            height: catHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: backgroundTextHeight,
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          pet.name,
                          style: theme.textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(pet.breed),
                        const SizedBox(height: 4),
                        Text(
                          "${pet.years} years old",
                          style: theme.textTheme.caption,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 14,
                            ),
                            Text(
                              "Distance: ${pet.distance}",
                              style: theme.textTheme.caption
                                  ?.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
