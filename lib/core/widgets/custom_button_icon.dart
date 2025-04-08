import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:social_mate/core/util/colors.dart';
import 'package:social_mate/core/util/responsive_layout.dart';
import 'package:social_mate/core/util/text_style.dart';

// ignore: must_be_immutable
class CustomButtonIcon extends StatelessWidget {
  CustomButtonIcon({
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
    this.colorIcon,
    required this.text,
    this.startIcon,
  });
  TextStyle? style;
  final double? height, width, borderWidth, borderRadius;
  final String text;
  final Color? bacColor, colorIcon, boxShadowColor, borderColor, textColor;
  void Function()? onTap;
  String? startIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 19.w(context)),
        width: width ?? 250.w(context),
        height: height ?? 50.h(context),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? AppColors.notColor,
            width: borderWidth ?? 1.w(context),
          ),
          boxShadow: [
            BoxShadow(
              color: boxShadowColor ?? AppColors.blackColor.withAlpha(50),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: bacColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
        ),
        child: FittedBox(
          child: Row(
            children: [
              Text(
                text,
                style:
                    style ??
                    getTitleStyle(
                      context,
                      color: textColor ?? AppColors.whiteColor,
                    ),
              ),
              Gap(20.w(context)),
              startIcon == null
                  ? SizedBox()
                  : SvgPicture.asset(
                    width: 24,
                    startIcon!,
                    colorFilter: ColorFilter.mode(
                      colorIcon ?? AppColors.whiteColor,
                      BlendMode.srcIn,
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
