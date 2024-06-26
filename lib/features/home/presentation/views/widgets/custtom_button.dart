import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CusttomButton extends StatelessWidget {
  const CusttomButton({
    super.key,
    required this.title,
  required this.textColor,
  required this.backGroundColor,
  required this.borderRadius
  }
  );
  final String title;
  final Color textColor;
  final Color backGroundColor;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return  SizedBox(
      height: height*.07,
      child: ElevatedButton(
        onPressed: (){},
          style: ElevatedButton.styleFrom(
            shape:  RoundedRectangleBorder(
              borderRadius: borderRadius,
            ), 
            backgroundColor: backGroundColor
          ),
         child: Text(
          title,
          style: Styles.textStyle17.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
          ),
          ),
    );
  }
}