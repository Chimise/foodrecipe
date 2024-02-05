import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/app-container.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: AppContainer(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.arrow_back), Icon(Icons.more_horiz)])),
    );
  }
}
