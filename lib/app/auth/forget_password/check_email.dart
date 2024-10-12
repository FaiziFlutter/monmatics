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
import 'package:monmatics/widgets/otp/otp.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

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
                text: 'Check Your Email',
                fontSize: AppTextSize.displayMediumFont,
                fontWeight: bold(),
                color: appSchemeLight.primary,
              ),
              const CustomText(
                textAlign: TextAlign.start,
                top: 5,
                bottom: 15,
                text: 'Please enter the six digit code sent to your email.',
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OTPField(),
                  OTPField(),
                  OTPField(),
                  OTPField(),
                  OTPField(),
                  OTPField(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'Verify Code',
                onTap: () {
                  Get.toNamed(AppRoutes.passwordReset);
                },
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "Haven't got the email yet?",
                    fontSize: AppTextSize.bodyxSmallFont,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      child: CustomText(
                        right: 0,
                        left: 0,
                        color: appSchemeLight.primary,
                        text: 'Resend Email',
                        fontSize: AppTextSize.bodyxSmallFont,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
