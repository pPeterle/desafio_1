import 'package:desafio_1/app/home/pages/adoption/widgets/adoption_app_bar_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/adoption_container_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/adoption_list_widget.dart';
import 'package:flutter/material.dart';

class AdoptionPage extends StatefulWidget {
  static const int index = 0;

  const AdoptionPage({Key? key}) : super(key: key);

  @override
  State<AdoptionPage> createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AdoptionAppBarWidget(),
        Positioned.fill(
          top: kToolbarHeight + 8,
          child: AdoptionContainerWidget(
            child: AdoptionListWidget(
              scrollController: scrollController,
            ),
          ),
        )
      ],
    );
  }
}
