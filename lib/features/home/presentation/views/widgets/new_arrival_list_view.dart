import 'package:bookly/core/widgets/failure_widget.dart';
import 'package:bookly/core/widgets/loading_widget.dart';
import 'package:bookly/features/home/presentation/manger/new_arrival_cubit/new_arrival_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewArrivalListView extends StatelessWidget {
  const NewArrivalListView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return BlocBuilder<NewArrivalCubit, NewArrivalState>(
      builder: (context, state) {
        if(state is FetchBookSuccess){
        return SizedBox(
          height: height * .3,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const BooksListViewItem(
              borderRadius: 25,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 8,
            ),
            itemCount: state.books.length,
          ),
        );
        }
        else if (state is FetchBookFailed){
          return FailureWidget(message: state.message);
        }
        else{
          return const LoadingWidget();
        }
      },
    );
  }
}
