import 'package:bookly/core/widgets/failure_widget.dart';
import 'package:bookly/core/widgets/loading_widget.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillarListView extends StatelessWidget {
  const SimillarListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is FetchBookSuccess){
        return ListView.separated(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  BooksListViewItem(
                  img: state.books[index].volumeInfo?.imageLinks?.smallThumbnail ?? "",
                  borderRadius: 15,
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  width: 8,
                ),
            itemCount: state.books.length);
        }
        else if( state is FetchBookFailed){
          return FailureWidget(message: state.message);
        }
        else {
          return const LoadingWidget();
        }
      },
    );
  }
}
