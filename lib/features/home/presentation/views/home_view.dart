import 'package:bookly/features/home/presentation/manger/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly/features/home/presentation/manger/new_arrival_cubit/new_arrival_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BestSellerCubit>(context).fetchBestSeller();
    BlocProvider.of<NewArrivalCubit>(context).fetchNewArrivalBooks();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
