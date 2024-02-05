import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer(
      {super.key, required this.child, this.top = 16.0, this.bottom = 16.0});

  final Widget child;
  final double top;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 32.0, right: 32.0, top: top, bottom: bottom),
      child: child,
    );
  }
}
