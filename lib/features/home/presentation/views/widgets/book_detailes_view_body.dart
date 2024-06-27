import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_detailes_custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/detailes_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/simillar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const BookDetailesCustomAppBar(),
                SizedBox(
                  height: height * .36,
                  child:  BooksListViewItem(
                    img: book.volumeInfo!.imageLinks!.smallThumbnail!,
                    borderRadius: 25
                    ),
                ),
                 DetailesSection(
                  author: book.volumeInfo!.authors![0],
                  title: book.volumeInfo!.title!,
                  link: book.volumeInfo!.previewLink!,
                ),
                const Expanded(
                    child: SizedBox(
                  height: 32,
                )),
                const SimillarBooksSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
