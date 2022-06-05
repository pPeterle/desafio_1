import 'package:flutter/material.dart';

class HomeController extends InheritedWidget {
  final isDrawerOpen = ValueNotifier(false);
  final indexPage = ValueNotifier(0);

  HomeController({required super.child, super.key});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  toggleDrawer() {
    isDrawerOpen.value = !isDrawerOpen.value;
  }

  setIndexPage(int page) {
    indexPage.value = page;
    toggleDrawer();
  }

  static HomeController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }
}
