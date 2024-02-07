import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/app-container.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key, required this.rating, required this.reviews});

  final String rating;
  final int reviews;

  get displayReviews {
    return reviews > 1 ? '$reviews Reviews' : '$reviews Review';
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        top: 10.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Theme.of(context).primaryColor,
              size: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                rating,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 12.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '($displayReviews)',
                style: TextStyle(
                    color: Theme.of(context).primaryColorLight, fontSize: 12.0),
              ),
            )
          ],
        ));
  }
}
