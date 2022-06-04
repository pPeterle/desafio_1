import 'package:desafio_1/app/home/pages/adoption/widgets/cat_item_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/category_item_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/sliver_fixed_menu_delegate.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> categories = [
  {
    'name': 'Cats',
    'iconPath': 'https://cdn-icons-png.flaticon.com/512/620/620851.png'
  },
  {
    'name': 'Dogs',
    'iconPath': 'https://cdn-icons-png.flaticon.com/512/620/620851.png'
  },
  {
    'name': 'Bunnies',
    'iconPath': 'https://cdn-icons-png.flaticon.com/512/620/620851.png'
  },
  {
    'name': 'Parrots',
    'iconPath': 'https://cdn-icons-png.flaticon.com/512/620/620851.png'
  },
  {
    'name': 'Horses',
    'iconPath': 'https://cdn-icons-png.flaticon.com/512/620/620851.png'
  },
  {
    'name': 'Dogs',
    'iconPath': 'https://cdn-icons-png.flaticon.com/512/620/620851.png'
  },
  {
    'name': 'Bunnies',
    'iconPath': 'https://cdn-icons-png.flaticon.com/512/620/620851.png'
  },
  {
    'name': 'Parrots',
    'iconPath': 'https://cdn-icons-png.flaticon.com/512/620/620851.png'
  }
];

class AdoptionListWidget extends StatelessWidget {
  final ScrollController scrollController;
  const AdoptionListWidget({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          leading: const Icon(Icons.search),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: theme.colorScheme.surface,
          actions: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list,
              ),
            ),
          ],
          title: const TextField(
            decoration: InputDecoration.collapsed(
              hintText: 'Search pet to adopt',
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverFixedMenuDelegate(
            child: Container(
              color: theme.colorScheme.background,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryItemWidget(category: category);
                },
              ),
            ),
            maxHeight: 90,
            minHeight: 90,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => const CatItemWidget(),
            childCount: 100,
          ),
        )
      ],
    );
  }
}
