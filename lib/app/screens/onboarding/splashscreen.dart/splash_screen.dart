import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:monmatics/utils/app_routes.dart';

import '../../../../const/global_var.dart';
import '../../../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.welcome);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.images.logo.image(width: appWidth(context) * 0.4),
      ),
    );
  }
}
