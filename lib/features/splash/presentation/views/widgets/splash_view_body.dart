import 'package:bookly/core/utils/images.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

  class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
 late Animation<Offset> slidingAnimation;
  @override
  void initState() {

  super.initState();
   initAnimation();
   navigateToHome();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final double width =MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: width*.2,
            width: double.infinity,
            child: SvgPicture.asset(
              Images.kLogo,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 8,),
          SlidingAnimation(slidingAnimation: slidingAnimation)
        ],
      ),
    );
  }

void initAnimation(){
     animationController=AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1)
    );
    slidingAnimation =Tween<Offset>(begin: const Offset(0,4), end: Offset.zero).animate(animationController);
    animationController.forward();
}

  void navigateToHome() {
     Future.delayed( const Duration(seconds: 2),
    (){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView(),));
    });
  }
  }