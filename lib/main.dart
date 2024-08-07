import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manger/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly/features/home/presentation/manger/new_arrival_cubit/new_arrival_cubit.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  setupService();
   
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BestSellerCubit(
         getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(create: (context) => NewArrivalCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.kMainColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        home: const SplashView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
