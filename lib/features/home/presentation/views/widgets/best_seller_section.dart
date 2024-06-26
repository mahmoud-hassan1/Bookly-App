import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Best Seller",
              style: Styles.kTitleMedium,
              ),
          ),
          
        ],
    );
  }
}