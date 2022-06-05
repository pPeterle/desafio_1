import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class AddPetPage extends StatelessWidget {
  const AddPetPage({Key? key}) : super(key: key);

  static const int index = 2;

  @override
  Widget build(BuildContext context) {
    final homeController = HomeController.of(context);
    return GestureDetector(
      onTap: () {
        homeController.toggleDrawer();
      },
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
