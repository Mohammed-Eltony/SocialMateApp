import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:social_mate/core/util/colors.dart';

showshowSnackBar({context, text, color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 1),
      backgroundColor: AppColors.primaryColor,
      content: Text(text),
    ),
  );
}

showLottieDialog({required context, required String lottieAsset}) {
  showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: SizedBox(
          height: 250,
          width: 250,
          child: Lottie.asset(lottieAsset),
        ),
      );
    },
  );
}

void showCustomDialog(BuildContext context, Widget customView, {Color? color}) {
  showDialog(
    context: context,

    barrierDismissible: false, // يمنع إغلاق الـ Dialog عند الضغط خارجها
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: color ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // حواف دائرية للحوار
        ),
        content: customView,
      );
    },
  );
}
