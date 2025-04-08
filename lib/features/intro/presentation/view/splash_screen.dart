import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/core/util/colors.dart';
import 'package:social_mate/core/util/responsive_layout.dart';
import 'package:social_mate/features/intro/presentation/view/onboarding_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late BuildContext thisContext;

  /// After 3 seconds, navigate to the main screen and remove this screen from
  /// the navigator stack.
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      // navigatorToAndRemoveUntil(thisContext, OnboardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    thisContext = context;
    return Scaffold(
      body: FlutterSplashScreen.scale(
        backgroundColor: AppColors.whiteColor,
        childWidget: SvgPicture.asset(Assets.logo1, width: 150.w(context)),

        duration: const Duration(seconds: 3),

        animationDuration: Duration(milliseconds: 1000),
        nextScreen: OnboardingView(),
      ),
    );
  }
}
