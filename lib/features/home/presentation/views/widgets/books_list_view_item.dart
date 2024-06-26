import 'package:bookly/core/utils/images.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2.7/4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(Images.kBookImage,
         fit :BoxFit.fill
         ),
      ),
    );
  }
}