import 'package:flutter/material.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, snapshot) {
        return SlideTransition(
         position: slidingAnimation,
          child: const Text(
           "Easy Reading",
           style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold
           ),
           textAlign: TextAlign.center,
         ),
        );
      }
    );
  }
}
