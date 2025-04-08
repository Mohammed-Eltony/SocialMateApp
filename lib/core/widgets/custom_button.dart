import 'package:flutter/material.dart';
import 'package:social_mate/core/util/colors.dart';
import 'package:social_mate/core/util/responsive_layout.dart';
import 'package:social_mate/core/util/text_style.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.height,
    this.width,
    this.onTap,
    this.style,
    this.borderColor,
    this.borderWidth,
    this.bacColor,
    this.textColor,
    this.borderRadius,
    this.boxShadowColor,
    required this.text,
    this.BorderRadiusOnly,
  });
  TextStyle? style;
  final double? height;
  final double? width;
  final double? borderWidth;

  final String text;

  final Color? bacColor;
  final Color? boxShadowColor;
  final Color? borderColor;
  final Color? textColor;
  void Function()? onTap;
  double? borderRadius;
  BorderRadiusGeometry? BorderRadiusOnly;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width ?? 250.w(context),
        height: height ?? 50.h(context),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? bacColor ?? AppColors.primaryColor,
            width: borderWidth ?? 1.w(context),
          ),
          boxShadow: [
            BoxShadow(
              color: boxShadowColor ?? AppColors.blackColor.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: bacColor ?? AppColors.primaryColor,
          borderRadius:
              BorderRadiusOnly ??
              BorderRadius.circular(borderRadius ?? 10.r(context)),
        ),
        child: FittedBox(
          child: Text(
            text,
            style:
                style ??
                getTitleStyle(
                  context,
                  fontSize: 14.sp(context),
                  color: textColor ?? AppColors.whiteColor,
                ),
          ),
        ),
      ),
    );
  }
}
