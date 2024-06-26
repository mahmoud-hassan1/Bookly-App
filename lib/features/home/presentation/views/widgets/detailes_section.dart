import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custtom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class DetailesSection extends StatelessWidget {
  const DetailesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "The Jungle Book",
          style: Styles.textStyle32.copyWith(
            fontWeight: FontWeight.w600
          ),
          ),
        Text(
          "Rudyard kipling",
          style: Styles.textStyle20.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.normal
          ),
          ),
        const SizedBox(height: 8),
        const RatingSection(),
        const SizedBox(height: 8),
       const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            children: [
              Expanded(
                child: CusttomButton(
                  backGroundColor: Colors.white,
                  textColor: Colors.black,
                  title: "19.99€",
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topLeft: Radius.circular(25)),
                  )
              ),
              Expanded(
                child: CusttomButton(
                  backGroundColor: Color(0XFFEF8262),
                  textColor: Colors.white,
                  title: "Free Preview",
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),topRight: Radius.circular(25)),
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}