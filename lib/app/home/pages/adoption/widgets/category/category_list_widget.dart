import 'package:desafio_1/app/home/models/pet_category.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/category/category_item_widget.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.background,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 30,
        itemBuilder: (context, index) {
          final category = PetCategory(
            image: "https://cdn-icons-png.flaticon.com/512/620/620851.png",
            name: 'Cats $index',
          );
          return CategoryItemWidget(
            category: category,
            isSelected: selectedIndex == index,
            onPressed: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
