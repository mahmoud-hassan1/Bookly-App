import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/simillar_list_view.dart';
import 'package:flutter/material.dart';

class SimillarBooksSection extends StatelessWidget {
  const SimillarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    return  Column(
      children: [
             Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "You can also like ",
                style: Styles.textStyle15.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
         const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: SizedBox(
              height: height *.15 ,
              child: const SimillarListView(),
              ),
          ),
          const SizedBox(height: 32,),
      ],
    );
  }
}