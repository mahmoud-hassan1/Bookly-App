import 'package:bookly/features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50,),
      child:  ListView.separated(
        physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BookDetailesView(),
              ),
            );
          },
          child: const BestSellerListViewItem()
          ),
        separatorBuilder: (context, index) => const SizedBox(height: 8,),
        itemCount: 5,
         ),
    );
  }
}