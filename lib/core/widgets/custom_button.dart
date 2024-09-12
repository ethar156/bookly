import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.borderRadius,
    required this.textColor,
    required this.fontSize,
  });

  final String text;
  final BorderRadius? borderRadius;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          text,
          style: Style.TextStyle18.copyWith(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
