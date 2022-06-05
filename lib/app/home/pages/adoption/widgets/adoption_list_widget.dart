import 'package:desafio_1/app/home/models/pet.dart';
import 'package:desafio_1/app/home/models/sex.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/category/category_list_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/pet/pet_item_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/sliver/sliver_fixed_menu_delegate.dart';
import 'package:flutter/material.dart';

final Pet pet = Pet(
    name: 'Sala',
    breed: 'Abyssian cat',
    years: '3',
    distance: '3.6 km',
    image: 'https://assets.stickpng.com/images/580b57fbd9996e24bc43bb8c.png',
    sex: Sex.male,
    location: 'Vitoria Espirito Santo');

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
            child: const CategoryListWidget(),
            maxHeight: 90,
            minHeight: 90,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => PetItemWidget(
              pet: pet,
            ),
            childCount: 1,
          ),
        )
      ],
    );
  }
}
