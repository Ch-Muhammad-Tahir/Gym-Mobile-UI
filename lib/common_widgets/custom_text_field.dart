import 'package:flutter/material.dart';
import 'package:gym_ui/utilities/color_constant.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Color hintColor;
  final Color filledColor;
  final Color? cursorColor;
  final bool enabled;
  final bool filled;
  final bool obscureText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextInputType keyboardType;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final int maxLines;
  final int? minLines;
  final double? fontSize;

  const CustomTextField(
      {super.key,
      required this.controller,
      this.hint = "",
      this.hintColor = Colors.grey,
      this.enabled = true,
      this.filledColor = Colors.white,
      this.filled = false,
      this.prefixWidget,
      this.suffixWidget,
      this.obscureText = false,
      this.cursorColor,
      this.keyboardType = TextInputType.text,
      this.onTap,
      this.onChanged,
      this.onSubmitted,
      this.maxLines = 1,
      this.minLines,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "Enter User Name Or Password",
        hintStyle: TextStyle(color: hintColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.lightBlack,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: ColorConstant.lightBlack,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: ColorConstant.lightBlack,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        fillColor: filledColor,
        filled: filled,
        prefix: prefixWidget,
        suffix: suffixWidget,
        hintFadeDuration: Durations.medium1,
      ),
      obscureText: obscureText,
      autocorrect: obscureText ? false : true,
      enableSuggestions: obscureText ? false : true,
      cursorColor: cursorColor,
      enabled: enabled,
      keyboardType: keyboardType,
      onTap: onTap,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      maxLines: maxLines,
      minLines: minLines,
      style: TextStyle(fontSize: fontSize),
    );
  }
}
