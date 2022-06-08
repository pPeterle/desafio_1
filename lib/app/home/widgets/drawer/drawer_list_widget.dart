import 'package:desafio_1/app/home/pages/add_pet/add_pet_page.dart';
import 'package:desafio_1/app/home/pages/adoption/adoption_page.dart';
import 'package:desafio_1/app/home/pages/donation/donation_page.dart';
import 'package:desafio_1/app/home/pages/favorite/favorite_page.dart';
import 'package:desafio_1/app/home/pages/message/message_page.dart';
import 'package:desafio_1/app/home/pages/profile/profile_page.dart';
import 'package:desafio_1/app/home/widgets/drawer/drawer_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerListWidget extends StatelessWidget {
  const DrawerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DrawerItemWidget(
          icon: Icons.home,
          title: 'Adoption',
          index: AdoptionPage.index,
        ),
        DrawerItemWidget(
          icon: Icons.mail,
          title: 'Donation',
          index: DonationPage.index,
        ),
        DrawerItemWidget(
          icon: Icons.add,
          title: 'Add pet',
          index: AddPetPage.index,
        ),
        DrawerItemWidget(
          icon: Icons.favorite,
          title: 'Favorites',
          index: FavoritePage.index,
        ),
        DrawerItemWidget(
          icon: Icons.message,
          title: 'Messages',
          index: MessagePage.index,
        ),
        DrawerItemWidget(
          icon: Icons.person,
          title: 'Profile',
          index: ProfilePage.index,
        ),
      ],
    );
  }
}
