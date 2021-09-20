import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  const RatingStars(this.rating, {Key? key}) : super(key: key);
  final int rating;
  @override
  Widget build(BuildContext context) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }
}
