import 'package:desafio_1/app/home/pages/adoption/widgets/adoption_app_bar_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/adoption_container_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/adoption_list_widget.dart';
import 'package:flutter/material.dart';

class AdoptionPage extends StatelessWidget {
  const AdoptionPage({super.key});

  static const int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        AdoptionAppBarWidget(),
        Positioned.fill(
          top: kToolbarHeight + 8,
          child: AdoptionContainerWidget(
            child: AdoptionListWidget(),
          ),
        )
      ],
    );
  }
}
