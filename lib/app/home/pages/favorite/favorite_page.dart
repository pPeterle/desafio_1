import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  static const int index = 3;

  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = HomeController.of(context);
    return GestureDetector(
      onTap: () {
        homeController.toggleDrawer();
      },
      child: Container(
        color: Colors.deepPurple,
      ),
    );
  }
}
