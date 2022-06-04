import 'package:desafio_1/app/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class AdoptionAppBarWidget extends StatelessWidget {
  static const double toolbarPadding = 8;

  const AdoptionAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = HomeController.of(context);
    return Container(
      padding: const EdgeInsets.all(toolbarPadding),
      height: kToolbarHeight + toolbarPadding,
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {
                homeController.toggleDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Location'),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.location_on),
                    Text('Kyvi, Ukraine'),
                  ],
                ),
              ],
            ),
          ),
          const CircleAvatar(
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
