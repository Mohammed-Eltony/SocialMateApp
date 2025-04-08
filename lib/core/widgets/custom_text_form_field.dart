import 'package:flutter/material.dart';
import 'package:social_mate/core/util/colors.dart';
import 'package:social_mate/core/util/responsive_layout.dart';
import 'package:social_mate/core/util/text_style.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final double width;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;
  final Color? borderSideColor;
  final bool filled;
  final bool obscureText;
  final double borderRadius;
  final double? contentPaddingVertical;
  final double? contentPaddingHorizontal;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final int? maxLins;
  final Function(String)? onChanged;
  TextInputType? keyboardType;

  CustomTextFormField({
    super.key,
    required this.width,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor,
    this.borderSideColor,
    this.filled = true,
    this.obscureText = false,
    this.borderRadius = 10.0,
    this.controller,
    this.validator,
    this.hintStyle,
    this.contentPaddingVertical,
    this.contentPaddingHorizontal,
    this.style,
    this.onChanged,
    this.keyboardType,
    this.maxLins,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: Alignment.centerLeft,
      child: TextFormField(
        keyboardType: keyboardType,
        onChanged: onChanged,
        obscureText: obscureText,
        maxLines: maxLins ?? 1,
        textAlign: TextAlign.start,
        style:
            style ??
            getBodyStyle(
              context,
              color: AppColors.blackColor,
              fontSize: 16.sp(context),
            ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: contentPaddingVertical ?? 15, // تكبير الحشوة الرأسية
            horizontal: contentPaddingHorizontal ?? 10, // تكبير الحشوة الأفقية
          ),

          isDense: true,
          hintText: hintText,
          hintStyle:
              hintStyle ??
              getSmallStyle(
                context,
                color: const Color(0xFF8390A1),
                fontSize: 15.sp(context),
              ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          filled: filled,
          fillColor: fillColor ?? AppColors.whiteColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r(context)),
            borderSide: BorderSide(
              color: borderSideColor ?? AppColors.whiteColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r(context)),
            borderSide: BorderSide(
              color: borderSideColor ?? AppColors.primaryColor,
            ),
          ),

          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r(context)),
            borderSide: BorderSide(color: AppColors.redColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r(context)),
            borderSide: BorderSide(color: AppColors.redColor),
          ),
        ),

        validator: validator,
        controller: controller,
      ),
    );
  }
}
