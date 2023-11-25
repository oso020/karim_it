import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'I Love You ❤❤',
              style: TextStyle(
                fontSize: 40
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}

class SlidingPhoto extends StatelessWidget {
  const SlidingPhoto({
    Key? key,
    required this.slidingPhotoAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingPhotoAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingPhotoAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingPhotoAnimation,
            child: const Text(
              'I Love You ❤❤',
              style: TextStyle(
                fontSize: 40
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
