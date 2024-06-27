import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key,});
 
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          "4.8",
          style: Styles.textStyle17,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle15,
        ),
      ],
    );
  }
}
