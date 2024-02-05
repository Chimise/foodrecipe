import 'package:flutter/material.dart';
import 'app-container.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({super.key});

  @override
  Widget build(BuildContext context) {
    void goBack() {
      print('Going back');
    }

    void viewDetails() {
      print('View more details');
    }

    return AppContainer(
      child: Expanded(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          NavigationIcon(icon: Icons.arrow_back, onPress: goBack),
          NavigationIcon(icon: Icons.more_horiz, onPress: viewDetails)
        ]),
      ),
    );
  }
}

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({super.key, required this.icon, required this.onPress});

  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPress, icon: Icon(icon));
  }
}
