import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/new_arrival_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 32),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 32),
          NewArrivalListView()
          ],
        ),
      ),
    );
  }
}