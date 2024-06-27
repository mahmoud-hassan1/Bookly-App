import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.book});
  final BookModel book;

  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(widget.book.volumeInfo!.title!);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailesViewBody(book: widget.book,),
    );
  }
}
