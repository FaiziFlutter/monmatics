import 'package:flutter/material.dart';
import 'package:monmatics/const/global_var.dart';

class CustomPadding extends StatelessWidget {
  const CustomPadding(
      {super.key,
      this.top,
      this.bottom,
      this.left,
      this.right,
      required this.child});
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: top ?? appHeight(context) * 0.06,
          bottom: bottom ?? appHeight(context) * 0.04,
          left: appWidth(context) * 0.06,
          right: appWidth(context) * 0.06),
      child: child,
    );
  }
}

// class CustomAuthPadding extends StatelessWidget {
//   const CustomAuthPadding(
//       {super.key,
//       this.top,
//       this.bottom,
//       this.left,
//       this.right,
//       required this.child});
//   final double? top;
//   final double? bottom;
//   final double? left;
//   final double? right;
//   final Widget child;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//           top: top ?? appHeight(context) * 0.06,
//           bottom: bottom ?? appHeight(context) * 0.04,
//           left: appWidth(context) * 0.08,
//           right: appWidth(context) * 0.08),
//       child: child,
//     );
//   }
// }

class CustomFieldPadding extends StatelessWidget {
  const CustomFieldPadding(
      {super.key,
      this.top,
      this.bottom,
      this.left,
      this.right,
      required this.child});
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: top ?? appHeight(context) * 0.01,
          bottom: bottom ?? appHeight(context) * 0.005,
          left: appWidth(context) * 0.08,
          right: appWidth(context) * 0.08),
      child: child,
    );
  }
}
