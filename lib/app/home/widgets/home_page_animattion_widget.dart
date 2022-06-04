import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePageAnimationWidget extends StatelessWidget {
  final Widget child;
  final int position;
  const HomePageAnimationWidget(
      {super.key, required this.child, this.position = 0});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeController = HomeController.of(context);
    final size = MediaQuery.of(context).size;

    return ValueListenableBuilder<bool>(
      valueListenable: homeController.isDrawerOpen,
      builder: (context, value, _) {
        final layer = (position * 10) / 100;

        double width = value ? size.width * (.55 + layer) : 0;
        double scale = value ? (.7 + layer) : 1.0;
        double height = value ? size.height * (1 - scale) / 2 : 0;

        return AnimatedContainer(
          transform: Matrix4.translationValues(
            width,
            height,
            0,
          )..scale(scale),
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          height: double.infinity,
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(value ? 30 : 0),
            boxShadow: const [
              BoxShadow(color: Colors.black26, spreadRadius: 5, blurRadius: 10),
            ],
          ),
          clipBehavior: Clip.hardEdge,
          child: child,
        );
      },
    );
  }
}
