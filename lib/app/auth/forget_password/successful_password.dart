import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/const/text_size.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/cbutton.dart';
import 'package:monmatics/widgets/ctext.dart';

import '../../../gen/assets.gen.dart';

class SuccessfulPassword extends StatelessWidget {
  const SuccessfulPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        top: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.successful.image(width: appWidth(context) * 0.4),
            CustomText(
              text: 'Successful',
              fontSize: AppTextSize.displayMediumFont,
              fontWeight: bold(),
              color: appSchemeLight.primary,
            ),
            const CustomText(
              bottom: 25,
              fontSize: AppTextSize.bodySmallFont,
              text:
                  'Congratulations! Your password has been changed. Click continue to login.',
            ),
            CustomButton(
              text: 'Continue',
              onTap: () {
                Get.offAllNamed(AppRoutes.welcomeAuth);
              },
            ),
          ],
        ),
      ),
    );
  }
}
