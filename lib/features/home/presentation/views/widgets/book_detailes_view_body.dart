import 'package:bookly/features/home/presentation/views/widgets/book_detailes_custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/detailes_section.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    return  SafeArea(
      child: Column(
        children: [
          const BookDetailesCustomAppBar(),
          SizedBox(
            height: height*.38 ,
            child: const BooksListViewItem(borderRadius: 25),
          ),
          const DetailesSection()

        ],
      ),
    );
  }
}