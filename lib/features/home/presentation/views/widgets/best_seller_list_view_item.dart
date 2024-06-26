import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .16,
      child: const Row(
        children: [
          BooksListViewItem(
            borderRadius: 15,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    child: Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle22,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
                Text(
                  "J.K Rowling",
                  style: Styles.textStyle15,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "1400 €",
                      style: Styles.textStyle17,
                    ),
                    Spacer(),
                    RatingSection()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
