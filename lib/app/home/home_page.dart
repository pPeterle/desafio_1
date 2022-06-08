import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:desafio_1/app/home/widgets/drawer/drawer_widget.dart';
import 'package:desafio_1/app/home/widgets/home_pages_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeController(
      child: SafeArea(
        child: Material(
          child: Stack(
            children: const [
              DrawerWidget(),
              HomePagesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
