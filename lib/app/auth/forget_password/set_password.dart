import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/const/text_size.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/cbutton.dart';
import 'package:monmatics/widgets/ctext.dart';
import 'package:monmatics/widgets/ctextformfield.dart';

import '../../../widgets/cappbar.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBackAppBar(),
      body: SingleChildScrollView(
        child: CustomPadding(
          top: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              CustomText(
                textAlign: TextAlign.start,
                text: 'Set a New Password',
                fontSize: AppTextSize.displayMediumFont,
                fontWeight: bold(),
                color: appSchemeLight.primary,
              ),
              const CustomText(
                textAlign: TextAlign.start,
                top: 5,
                bottom: 15,
                text:
                    'Create a new password. Ensure its different and unique from the previous ones.',
              ),
              const CustomTextFormField(
                hint: 'Password',
                fieldName: 'Password',
                bottomPadding: 0,
                obscureText: true,
              ),
              const CustomTextFormField(
                hint: 'Confirm Password',
                fieldName: 'Confirm Password',
                bottomPadding: 30,
                obscureText: true,
              ),
              CustomButton(
                text: 'Update Password',
                onTap: () => Get.toNamed(AppRoutes.successfullPassword),
              )
            ],
          ),
        ),
      ),
    );
  }
}
