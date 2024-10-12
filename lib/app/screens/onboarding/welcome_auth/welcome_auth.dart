import 'package:flutter/material.dart';

import 'package:monmatics/app/auth/login/login.dart';
import 'package:monmatics/app/auth/signup/signup.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/const/text_size.dart';
import 'package:monmatics/gen/assets.gen.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/ctext.dart';

class WelcomeAuthScreen extends StatefulWidget {
  const WelcomeAuthScreen({super.key});

  @override
  State<WelcomeAuthScreen> createState() => _WelcomeAuthScreenState();
}

class _WelcomeAuthScreenState extends State<WelcomeAuthScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomPadding(
          top: 15,
          child: Column(
            children: [
              Assets.images.fullLogo.image(width: appWidth(context) * 0.5),
              Image.asset(
                'assets/images/crm.png',
                width: 250,
              ),
              //SvgGenImage(Assets.images.crmSvg).svg(fit: BoxFit.scaleDown),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(offset: Offset(0.5, 1), blurRadius: 2)
                  ],
                ),
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      left: selectedIndex == 0 ? 0 : 150,
                      right: selectedIndex == 1 ? 0 : 150,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: appSchemeLight.primary,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        // Login Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(25),
                                ),
                              ),
                              child: CustomText(
                                text: 'Login',
                                fontSize: AppTextSize.bodyLargeFont,
                                color: selectedIndex == 0
                                    ? Colors.white
                                    : appSchemeLight.outline,
                                fontWeight: bold(),
                              ),
                            ),
                          ),
                        ),

                        // Signup Button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(25),
                                ),
                              ),
                              child: CustomText(
                                text: 'Signup',
                                fontSize: AppTextSize.bodyLargeFont,
                                color: selectedIndex == 1
                                    ? Colors.white
                                    : appSchemeLight.outline,
                                fontWeight: bold(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              selectedIndex == 0 ? const LogIn() : const SignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
