import 'package:bookly/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class SimillarListView extends StatelessWidget {
  const SimillarListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            const BooksListViewItem(borderRadius: 15),
        separatorBuilder: (context, index) => const SizedBox(
              width: 8,
            ),
        itemCount: 5);
  }
}
