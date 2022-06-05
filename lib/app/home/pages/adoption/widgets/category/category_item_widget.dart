import 'package:desafio_1/app/home/models/pet_category.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  final PetCategory category;

  const CategoryItemWidget({
    Key? key,
    required this.category,
    required this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        AnimatedContainer(
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 200),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isSelected
                ? theme.colorScheme.primary
                : theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 8),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: onPressed,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.network(
                  category.image,
                  height: 40,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          category.name,
          style: theme.textTheme.caption,
        )
      ],
    );
  }
}
