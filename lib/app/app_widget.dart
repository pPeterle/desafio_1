import 'package:desafio_1/app/home/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: const HomePage(),
    );
  }
}
