import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTap,
      this.color,
      required this.text,
      this.height,
      this.width,
      this.fontSize,
      this.fontWeight,
      this.textColor,
      this.borderRadius});

  final void Function()? onTap;
  final Color? color;
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? appHeight(context) * 0.065,
        width: width ?? appWidth(context),
        decoration: BoxDecoration(
          boxShadow: const [BoxShadow(blurRadius: 2)],
          color: color ?? appSchemeLight.primary,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: fontWeight ?? FontWeight.bold,
                fontFamily: poppins(),
                color: textColor ?? appSchemeLight.background),
          ),
        ),
      ),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: SvgPicture.asset(
        'assets/images/backbutton.svg',
        height: 25,
        width: 25,
      ),
    );
  }
}
