import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .16,
      child:  Row(
        children: [
          BooksListViewItem(
            img: book.volumeInfo!.imageLinks!.smallThumbnail!,
            borderRadius: 15,
          ),
        const  SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    child: Text(
                  book.volumeInfo!.title!,
                  style: Styles.textStyle22,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
                Text(
                  book.volumeInfo!.authors![0],
                  style: Styles.textStyle15,
                ),
               const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                    "${book.saleInfo?.listPrice?.amount  ??  0}",
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
