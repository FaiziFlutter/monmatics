import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/const/text_size.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/cbutton.dart';
import 'package:monmatics/widgets/ctext.dart';

import '../../../widgets/cappbar.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBackAppBar(),
      body: CustomPadding(
        top: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBackButton(),
            CustomText(
              textAlign: TextAlign.start,
              text: 'Password Reset',
              fontSize: AppTextSize.displayMediumFont,
              fontWeight: bold(),
              color: appSchemeLight.primary,
            ),
            const CustomText(
              textAlign: TextAlign.start,
              top: 5,
              bottom: 15,
              text:
                  'Your password has been successfully reset. click confirm to set a new password.',
            ),
            CustomButton(
              text: 'Confirm',
              onTap: () {
                Get.toNamed(AppRoutes.setPassword);
              },
            )
          ],
        ),
      ),
    );
  }
}
