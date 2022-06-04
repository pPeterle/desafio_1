import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:desafio_1/app/home/pages/adoption/adoption_page.dart';
import 'package:desafio_1/app/home/widgets/drawer/drawer_widget.dart';
import 'package:desafio_1/app/home/widgets/home_page_animattion_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return HomeController(
      child: SafeArea(
        child: Material(
          child: Stack(
            children: [
              const DrawerWidget(),
              HomePageAnimationWidget(
                position: 0,
                child: Container(
                  height: double.infinity,
                  color: Colors.red,
                ),
              ),
              HomePageAnimationWidget(
                position: 1,
                child: Container(
                  height: double.infinity,
                  color: Colors.blue,
                ),
              ),
              const HomePageAnimationWidget(
                position: 2,
                child: AdoptionPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
