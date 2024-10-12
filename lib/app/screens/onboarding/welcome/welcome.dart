import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/const/text_size.dart';
import 'package:monmatics/gen/assets.gen.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/cbutton.dart';
import 'package:monmatics/widgets/ctext.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.logo.image(width: appWidth(context) * 0.4),
            CustomText(
              bottom: appHeight(context) * 0.1,
              text: 'Monmatics',
              fontSize: AppTextSize.displaySmallFont,
              color: appSchemeLight.primary,
              fontWeight: bold(),
            ),
            CustomButton(
              text: 'Get Started',
              onTap: () {
                Get.toNamed(AppRoutes.welcomeAuth);
              },
            ),
          ],
        ),
      ),
    );
  }
}
