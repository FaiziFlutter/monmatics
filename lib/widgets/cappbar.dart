import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../const/global_var.dart';
import '../gen/assets.gen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:
          title ?? Assets.images.fullLogo.image(width: appWidth(context) * 0.5),
      centerTitle: true,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// Import your generated assets

class CustomBackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomBackAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
  });
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: leading ??
            Padding(
              padding: const EdgeInsets.all(8.0), // Optional padding
              child: SizedBox(
                width: 4, // Desired width for the back button
                height: 4, // Desired height for the back button
                child: Assets.icons.backbutton
                    .svg(), // Use the generated backbutton SVG
              ),
            ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
