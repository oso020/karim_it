import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karim_it/home/homeView.dart';

import 'sliding_text.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingTextAnimation;
  late Animation<Offset> slidingPhotoAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height-20,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/12.jpg'))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SlidingPhoto(slidingPhotoAnimation: slidingPhotoAnimation),
          const SizedBox(
            height: 4,
          ),
          SlidingText(slidingAnimation: slidingTextAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingTextAnimation =
        Tween<Offset>(begin: const Offset(0, -10), end: Offset.zero)
            .animate(animationController);

    slidingPhotoAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Navigate to home screen after a delay
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
    );
  }
}
