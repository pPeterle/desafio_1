import 'package:flutter/material.dart';

class CatItemWidget extends StatelessWidget {
  const CatItemWidget({Key? key}) : super(key: key);

  final double catHeight = 180;
  final double backgroundCatHeight = 160;
  final double backgroundTextHeight = 120;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: backgroundTextHeight,
            margin: const EdgeInsets.only(bottom: 20),
            width: double.infinity, // Atenção
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: backgroundCatHeight,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Image.network(
                        "https://assets.stickpng.com/images/580b57fbd9996e24bc43bb8c.png",
                        height: catHeight,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: backgroundTextHeight,
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sala",
                        style: theme.textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text("Abynissian cat"),
                      const SizedBox(height: 4),
                      Text(
                        "2 years old",
                        style: theme.textTheme.caption,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 14,
                          ),
                          Text(
                            "Distance: 3.6km",
                            style:
                                theme.textTheme.caption?.copyWith(fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
