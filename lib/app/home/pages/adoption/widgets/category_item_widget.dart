import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final Map<String, dynamic> category;

  const CategoryItemWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Material(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                  category['iconPath'],
                  height: 40,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          category['name'],
          style: theme.textTheme.caption,
        )
      ],
    );
  }
}
