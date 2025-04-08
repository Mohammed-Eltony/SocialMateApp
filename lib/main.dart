import 'package:flutter/material.dart';
import 'package:social_mate/core/util/colors.dart';
import 'package:social_mate/core/util/responsive_layout.dart';
import 'package:social_mate/features/intro/presentation/view/splash_screen.dart';

void main() {
  runApp(const SocialMateApp());
}

class SocialMateApp extends StatelessWidget {
  const SocialMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    Rsp.initRsp(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
