import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class NewArrivalListView extends StatelessWidget {
  const NewArrivalListView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
        itemCount: 5,
      ),
    );
  }
}
