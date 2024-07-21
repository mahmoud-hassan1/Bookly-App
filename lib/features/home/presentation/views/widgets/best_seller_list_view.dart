// ignore_for_file: file_names

import 'package:bookly/core/widgets/failure_widget.dart';
import 'package:bookly/core/widgets/loading_widget.dart';
import 'package:bookly/features/home/presentation/manger/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if(state is FetchBookSuccess){
        return Padding(
          padding: const EdgeInsets.only(
            right: 50,
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  BookDetailesView(
                        book: state.books[index],
                      ),
                    ),
                  );
                },
                child:  BestSellerListViewItem(book: state.books[index],)),
            separatorBuilder: (context, index) => const SizedBox(
              height: 8,
            ),
            itemCount: state.books.length,
          ),
        );
        }
        else if( state is FetchBookFailed){
            return  FailureWidget(message: state.message);
        } 
        else{
            return const LoadingWidget();
        }
      },
    );
  }
}
