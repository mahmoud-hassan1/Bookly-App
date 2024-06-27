import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailesViewBody(book: book,),
    );
  }
}
