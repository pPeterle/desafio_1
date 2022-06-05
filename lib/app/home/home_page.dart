import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:desafio_1/app/home/pages/add_pet/add_pet_page.dart';
import 'package:desafio_1/app/home/pages/adoption/adoption_page.dart';
import 'package:desafio_1/app/home/pages/donation/donation_page.dart';
import 'package:desafio_1/app/home/widgets/drawer/drawer_widget.dart';
import 'package:desafio_1/app/home/widgets/home_page_animattion_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> displayOrder = [
    const DonationPage(),
    const AddPetPage(),
    const AdoptionPage()
  ];

  @override
  Widget build(BuildContext context) {
    return HomeController(
      child: SafeArea(
        child: Material(
          child: Builder(builder: (context) {
            final homeController = HomeController.of(context);

            return ValueListenableBuilder<int>(
              valueListenable: homeController.indexPage,
              builder: (context, index, _) {
                Widget? widget;
                switch (index) {
                  case DonationPage.index:
                    widget = displayOrder
                        .firstWhere((element) => element is DonationPage);
                    break;
                  case AddPetPage.index:
                    widget = displayOrder
                        .firstWhere((element) => element is AddPetPage);
                    break;
                  case AdoptionPage.index:
                    widget = displayOrder
                        .firstWhere((element) => element is AdoptionPage);
                    break;
                }

                displayOrder.remove(widget);
                displayOrder.add(widget!);

                final items = displayOrder.map(
                  (widget) => HomePageAnimationWidget(
                    position: displayOrder.indexOf(widget),
                    child: widget,
                  ),
                );
                return Stack(
                  children: [
                    const DrawerWidget(),
                    ...items,
                  ],
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
