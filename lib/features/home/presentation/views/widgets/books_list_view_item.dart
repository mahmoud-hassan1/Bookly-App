import 'package:bookly/core/utils/images.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    return  SizedBox(
      width: width *0.5,
      child: AspectRatio(
        aspectRatio: 2.2/3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(Images.kBookImage,
           fit :BoxFit.fill
           ),
        ),
      ),
    );
  }
}