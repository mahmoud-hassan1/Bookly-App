import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.kMainColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}