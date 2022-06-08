import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePageAnimationWidget extends StatelessWidget {
  final Widget child;
  final int position;

  const HomePageAnimationWidget({
    super.key,
    required this.child,
    this.position = 0,
  });

  static const maxLayer = 3;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeController = HomeController.of(context);
    final size = MediaQuery.of(context).size;

    return ValueListenableBuilder<bool>(
      valueListenable: homeController.isDrawerOpen,
      builder: (context, isOpen, _) {
        final index = (position - maxLayer);
        final layer = (index * 10) / 100;

        double width = isOpen ? size.width * (.55 + layer) : 0;
        double scale = isOpen ? (.7 + layer) : 1.0;
        double height = isOpen ? size.height * (1 - scale) / 2 : 0;

        return GestureDetector(
          onTap: () {
            if (isOpen) {
              homeController.toggleDrawer();
            }
          },
          child: AnimatedContainer(
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
              borderRadius: BorderRadius.circular(isOpen ? 30 : 0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, spreadRadius: 5, blurRadius: 10),
              ],
            ),
            clipBehavior: Clip.hardEdge,
            child: IgnorePointer(
              ignoring: isOpen,
              child: child,
            ),
          ),
        );
      },
    );
  }
}
