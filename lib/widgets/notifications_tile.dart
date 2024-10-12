import 'package:flutter/material.dart';

import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/const/text_size.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/ctext.dart';

class NotificationsTile extends StatelessWidget {
  const NotificationsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: appSchemeLight.surfaceVariant,
            child: const Icon(Icons.person),
          ),
        ],
      ),
      title: const CustomText(
        text: 'askdjfklasdjfklasdjfkladjsklfjaskldfj',
        fontSize: AppTextSize.bodyMediumFont,
        textAlign: TextAlign.start,
      ),
      subtitle: CustomText(
        text: '1 min ago',
        textAlign: TextAlign.start,
        fontSize: AppTextSize.bodyxSmallFont,
        color: appSchemeLight.onSurfaceVariant,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: appSchemeLight.primary,
            radius: 15,
            child: CustomText(
              text: '1',
              fontWeight: bold(),
              color: appSchemeLight.background,
            ),
          ),
        ],
      ),
    );
  }
}
