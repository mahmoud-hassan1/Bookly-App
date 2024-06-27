import 'package:bookly/core/utils/images.dart';
import 'package:bookly/core/widgets/loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.borderRadius, required this.img});
  final double borderRadius;
  final String img;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: CachedNetworkImage(
            fit: BoxFit.fill, imageUrl: img,
            placeholder: (context, url) => const LoadingWidget(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
           ),
      ),
    );
  }
}
