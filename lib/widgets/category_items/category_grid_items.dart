import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monmatics/const/text_size.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/ctext.dart';

import '../../app/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.onTap});
  final Category category;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * 0.04),
            color: category.color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              category
                  .svgIcon, // No need for .toString(), svgIcon should be a String
              width: 30, // Set desired width for the icon
              height: 30, // Set desired height for the icon
            ),
            CustomText(
              text: category.title,
              color: appSchemeLight.background,
              fontSize: AppTextSize.bodyxSmallFont,
            ),
          ],
        ),
      ),
    );
  }
}
