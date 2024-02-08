import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/app-container.dart';

class MealTitle extends StatelessWidget {
  const MealTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Text(
        title,
        softWrap: true,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.grey[900]),
      ),
    );
  }
}

class MealImage extends StatelessWidget {
  const MealImage({super.key, required this.imageSrc});

  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        top: 20.0,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imageSrc,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Image.asset('assets/play_button.png')
          ],
        ));
  }
}
