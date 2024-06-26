import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              style: Styles.textStyle20,
              ),
          ),
          SizedBox (height: 16,),
          BestSellerListViewItem()
        ],
    );
  }
}