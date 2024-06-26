import 'package:bookly/core/utils/images.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key,required this.borderRadius});
  final double borderRadius ;
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2.8/4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(Images.kBookImage,
         fit :BoxFit.fill
         ),
      ),
    );
  }
}