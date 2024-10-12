import 'package:flutter/material.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/ctext.dart';
import 'package:monmatics/widgets/notifications_tile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Notification',
          color: appSchemeLight.primary,
          fontWeight: bold(),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: CustomText(
              fontSize: 10,
              text: 'Mark all read',
              color: appSchemeLight.error,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const NotificationsTile(),
              Divider(
                indent: 20,
                endIndent: 20,
                color: appSchemeLight.outlineVariant,
              )
            ],
          );
        },
      ),
    );
  }
}
