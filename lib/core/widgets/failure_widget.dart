import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return  Center(
     child:  Text(
        message, 
        style: Styles.textStyle20,

      )
    );
  }
}