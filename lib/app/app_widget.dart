import 'package:desafio_1/app/home/controllers/app_controller.dart';
import 'package:desafio_1/app/home/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppController(
      child: Builder(builder: (context) {
        final appController = AppController.of(context);
        return ValueListenableBuilder<bool>(
          valueListenable: appController.isLightTheme,
          child: const HomePage(),
          builder: (context, isLightTheme, child) {
            return MaterialApp(
              title: 'Flutter Demo',
              themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: const ColorScheme(
                  brightness: Brightness.light,
                  primary: Color(0xff306060),
                  onPrimary: Colors.white,
                  secondary: Color(0xff306060),
                  onSecondary: Color(0xff87B2B2),
                  error: Colors.redAccent,
                  onError: Colors.white,
                  background: Color(0xffEDEDED),
                  onBackground: Color(0xff616161),
                  surface: Colors.white,
                  onSurface: Color(0xff616161),
                ),
              ),
              darkTheme: ThemeData(
                useMaterial3: true,
                colorScheme: const ColorScheme(
                  brightness: Brightness.dark,
                  secondary: Color(0xff29B9F0),
                  onPrimary: Colors.white,
                  primary: Color(0xff2F71E8),
                  onSecondary: Colors.white,
                  error: Color(0xffef233c),
                  onError: Colors.white,
                  background: Color(0xff111213),
                  onBackground: Colors.white,
                  surface: Color(0xff212224),
                  onSurface: Color(0xffA1A1A1),
                ),
              ),
              home: child,
            );
          },
        );
      }),
    );
  }
}
