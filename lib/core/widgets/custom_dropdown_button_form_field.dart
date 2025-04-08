import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:social_mate/core/util/colors.dart';
import 'package:social_mate/core/util/responsive_layout.dart';
import 'package:social_mate/core/util/text_style.dart';


class CustomDropdownButtonFormField<T> extends StatelessWidget {
  final String hint;
  final List<T> items;
  final T? selectedValue;
  final String Function(T)? getItemLabel;
  final void Function(T?)? onChanged;
  final void Function(T?)? onSaved;
  final String? Function(T?)? validator;

  const CustomDropdownButtonFormField({
    super.key,
    required this.hint,
    required this.items,
    required this.getItemLabel,
    this.selectedValue,
    this.onChanged,
    this.onSaved,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<T>(
      isExpanded: true,

      decoration: InputDecoration(
        fillColor: AppColors.whiteColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 16.w(context)),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(10.r(context)),
        ),
      ),
      hint: Text(hint, style: getBodyStyle(context)),
      items:
          items
              .map(
                (item) => DropdownMenuItem<T>(
                  value: item,
                  child: Text(
                    getItemLabel!(item),
                    style: getBodyStyle(
                      context,
                      fontSize: 14.sp(context),
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
              )
              .toList(),
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,

      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: IconStyleData(
        icon: Icon(Icons.arrow_drop_down, size: 28.sp(context)),
        iconSize: 24,
      ),
      dropdownStyleData: DropdownStyleData(
        maxHeight: Rsp.getScreenHeight() * 0.5,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,

          borderRadius: BorderRadius.circular(10.r(context)),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
