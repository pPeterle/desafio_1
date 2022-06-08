import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:desafio_1/app/home/widgets/home_page_animattion_widget.dart';
import 'package:flutter/material.dart';
import 'package:desafio_1/app/home/pages/add_pet/add_pet_page.dart';
import 'package:desafio_1/app/home/pages/adoption/adoption_page.dart';
import 'package:desafio_1/app/home/pages/donation/donation_page.dart';
import 'package:desafio_1/app/home/pages/favorite/favorite_page.dart';
import 'package:desafio_1/app/home/pages/message/message_page.dart';
import 'package:desafio_1/app/home/pages/profile/profile_page.dart';

class HomePagesWidget extends StatefulWidget {
  const HomePagesWidget({Key? key}) : super(key: key);

  @override
  State<HomePagesWidget> createState() => _HomePagesWidgetState();
}

class _HomePagesWidgetState extends State<HomePagesWidget> {
  List<Widget> displayOrder = [
    const MessagePage(),
    const ProfilePage(),
    const FavoritePage(),
    const AddPetPage(),
    const DonationPage(),
    const AdoptionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final homeController = HomeController.of(context);
    return ValueListenableBuilder<int>(
      valueListenable: homeController.indexPage,
      builder: (context, index, _) {
        Widget? widget;
        switch (index) {
          case DonationPage.index:
            widget =
                displayOrder.firstWhere((element) => element is DonationPage);
            break;
          case AddPetPage.index:
            widget =
                displayOrder.firstWhere((element) => element is AddPetPage);
            break;
          case AdoptionPage.index:
            widget =
                displayOrder.firstWhere((element) => element is AdoptionPage);
            break;
          case FavoritePage.index:
            widget =
                displayOrder.firstWhere((element) => element is FavoritePage);
            break;
          case MessagePage.index:
            widget =
                displayOrder.firstWhere((element) => element is MessagePage);
            break;
          case ProfilePage.index:
            widget =
                displayOrder.firstWhere((element) => element is ProfilePage);
            break;
        }

        if (widget != null) {
          displayOrder.remove(widget);
          displayOrder.add(widget);
        }

        final items = displayOrder
            .skip(displayOrder.length - HomePageAnimationWidget.maxLayer)
            .map(
              (widget) => HomePageAnimationWidget(
                position: displayOrder.indexOf(widget),
                child: widget,
              ),
            )
            .toList();
        return Stack(
          children: items,
        );
      },
    );
  }
}
