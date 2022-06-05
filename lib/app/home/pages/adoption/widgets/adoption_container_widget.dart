import 'package:flutter/material.dart';

class AdoptionContainerWidget extends StatelessWidget {
  final Widget child;
  const AdoptionContainerWidget({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(40),
      ),
      child: Container(
        color: theme.colorScheme.background,
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}
