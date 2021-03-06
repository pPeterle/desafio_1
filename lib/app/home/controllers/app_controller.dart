import 'package:flutter/material.dart';

class AppController extends InheritedWidget {
  final isLightTheme = ValueNotifier(true);

  AppController({required super.child, super.key});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  toggleTheme() {
    isLightTheme.value = !isLightTheme.value;
  }

  static AppController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppController>()!;
  }
}
