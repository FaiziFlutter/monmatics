import 'package:flutter/material.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/gen/assets.gen.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/ctext.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: CustomPadding(
        child: Column(
          children: [
            SizedBox(
              height: appHeight(context) * 0.3,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.person),
                  ),
                  CustomText(
                    top: 20,
                    bottom: 0,
                    text: 'Faizan Saeed',
                    fontWeight: bold(),
                  ),
                  CustomText(
                    text: 'monmatics@gmail.com',
                    fontWeight: bold(),
                    fontSize: 12,
                    color: appSchemeLight.primary,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: appHeight(context) * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Assets.icons.icImport.svg(),
                        const CustomText(text: 'Import'),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Assets.icons.icExport.svg(),
                        const CustomText(text: 'Export'),
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Assets.icons.icSettings.svg(),
                          const CustomText(text: 'Settings'),
                        ],
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.support_agent_sharp),
                          CustomText(text: 'Chat Support'),
                        ],
                      )),
                  InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Assets.icons.icLogout.svg(),
                          const CustomText(text: 'Logout'),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
