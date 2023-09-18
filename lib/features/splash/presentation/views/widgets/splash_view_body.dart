import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnimation();
    navigateToHome();
    super.initState();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const HomeView(),
          transition: Transition.fade, duration: kTransitionDuration);
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (BuildContext context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: SvgPicture.asset(
                AssetsData.logo,
                width: 70,
                height: 70,
              ),
            );
          },
        ),
        const SizedBox(
          height: 12,
        ),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (BuildContext context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text(
                "Read Free Books",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            );
          },
        ),
      ],
    );
  }
}
