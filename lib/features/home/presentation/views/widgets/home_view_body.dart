import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_List_View.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/new_arrival_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(height: 32),
                NewArrivalListView(),
                SizedBox(height: 32),
                Text(
                  "Best Seller",
                  style: Styles.textStyle20,
                ),
                  SizedBox (height: 16,),
              ],
            )),
            SliverFillRemaining(
              child: BestSellerListView(),
            )
          ],
        ),

      ),
    );
  }
}
