import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/const/text_size.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/cappbar.dart';
import 'package:monmatics/widgets/cbutton.dart';
import 'package:monmatics/widgets/ctext.dart';
import 'package:monmatics/widgets/ctextformfield.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                text: 'Forgot Password?',
                fontSize: AppTextSize.displayMediumFont,
                fontWeight: bold(),
                color: appSchemeLight.primary,
              ),
              const CustomText(
                textAlign: TextAlign.start,
                top: 5,
                bottom: 15,
                text:
                    'Please enter your Email address, we will send you code to reset your password.',
              ),
              const CustomTextFormField(
                fieldName: 'Email Address',
                bottomPadding: 30,
                hint: 'Email',
              ),
              CustomButton(
                text: 'Reset Password',
                onTap: () {
                  Get.toNamed(AppRoutes.checkEmail);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
