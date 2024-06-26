import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class DetailesSection extends StatelessWidget {
  const DetailesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "The Jungle Book",
          style: Styles.textStyle32.copyWith(
            fontWeight: FontWeight.w600
          ),
          ),
        Text(
          "Rudyard kipling",
          style: Styles.textStyle20.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.normal
          ),
          ),
        const SizedBox(height: 8),
        const RatingSection(),
        
      ],
    );
  }
}