import 'package:flutter/material.dart';
import 'package:monmatics/const/global_var.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.backgroundColor,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.top = 2,
    this.bottom = 2,
    this.left = 6,
    this.right = 6,
    this.textAlign,
  });
  final String text;
  final Color? backgroundColor;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: left ?? 12,
          top: top ?? 2,
          bottom: bottom ?? 2,
          right: right ?? 12),
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          backgroundColor: backgroundColor,
          color: color,
          fontFamily: poppins(),
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
        ),
      ),
    );
  }
}
