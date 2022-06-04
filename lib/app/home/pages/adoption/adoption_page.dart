import 'package:desafio_1/app/home/widgets/adoption_app_bar_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/adoption_container_widget.dart';
import 'package:desafio_1/app/home/pages/adoption/widgets/adoption_list_widget.dart';
import 'package:flutter/material.dart';

class AdoptionPage extends StatefulWidget {
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
        AnimatedBuilder(
          animation: scrollController,
          child: HomeContainerWidget(
            child: AdoptionListWidget(
              scrollController: scrollController,
            ),
          ),
          builder: (context, widget) {
            const height = kToolbarHeight + 16;
            double distance = height;
            if (scrollController.hasClients) {
              distance -= scrollController.offset;
            }
            return Positioned.fill(
              top: distance < 0 ? 0 : distance,
              bottom: 5,
              child: widget!,
            );
          },
        )
      ],
    );
  }
}
