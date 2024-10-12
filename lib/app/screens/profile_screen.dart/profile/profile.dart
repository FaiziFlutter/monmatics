import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/cappbar.dart';
import 'package:monmatics/widgets/ctext.dart';
import 'package:monmatics/widgets/ctextformfield.dart';

import '../../../../gen/assets.gen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppBar(
        title: CustomText(
          text: 'My Profile',
          fontWeight: bold(),
          color: appSchemeLight.primary,
        ),
      ),
      body: CustomPadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: appWidth(context) * 0.4,
                    child: const CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Assets.icons.icEditProfile.svg(),
                      ),
                    ),
                  ),
                ],
              ),
              CustomText(
                top: 20,
                text: 'Faizan Saeed',
                fontWeight: bold(),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.editProfile);
                },
                child: CustomText(
                  text: 'Edit Profile',
                  fontWeight: bold(),
                  color: appSchemeLight.primary,
                ),
              ),
              CustomTextFormField(
                isEnabled: false,
                hintcolor: appSchemeLight.onSurface,
                bottomPadding: 0,
                fieldName: 'Email',
                filled: false,
                hint: 'Monmatics@gmail.com',
              ),
              CustomTextFormField(
                fieldName: 'Password',
                obscureText: true,
                filled: false,
                isEnabled: false,
                hintcolor: appSchemeLight.onSurface,
                hint: '**********',
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.checkEmail);
                  },
                  child: CustomText(
                    text: 'Change Password',
                    fontWeight: FontWeight.w600,
                    color: appSchemeLight.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Get.offNamed(AppRoutes.welcomeAuth);
                },
                child: CustomText(
                  text: 'Delete Account',
                  fontWeight: bold(),
                  color: appSchemeLight.error,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
