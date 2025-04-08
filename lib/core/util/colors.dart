import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color(0xFF007AFF);
  static Color secondColor = const Color(0x4C0779B8);
  static Color purpleColor = const Color(0xFFC540F2);
  static Color lightPurple = const Color(0xFFEDDFFF);
  static Color darkColor = const Color(0xFF2C2B34);
  static Color orangeColor = const Color(0xFFFF5C00);

  static Color greyColor = const Color(0xffB8B8B8);
  static Color greyColor2 = const Color(0xffefeef2);
  static Color greyColor3 = const Color(0xffF1F1F3);

  static Color whiteColor = Colors.white;
  static Color notColor = const Color(0x00000000);
  static Color blackColor = Colors.black;
  static Color redColor = Colors.red;
  static Color greenColor = Colors.green;

  static Gradient gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.repeated,
    colors: [Color(0xFF96BBFE), Color(0xFF96BBFE), Color(0xFFCCFDD9)],
  );

  static Gradient gradient2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.repeated,
    colors: [Color(0xFFCCFDD9), Color(0xFF96BBFE)],
  );
  static Gradient gradient3 = LinearGradient(
    begin: Alignment(-0.01, -1.00),
    end: Alignment(0.01, 1),
    colors: [Color(0xFF97BCFF), Color(0xFFC4F3E0)],
  );
}
