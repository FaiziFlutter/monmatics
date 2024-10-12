import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/widgets/cappbar.dart';
import 'package:monmatics/widgets/carousel_slider.dart';
import 'package:monmatics/widgets/drawer.dart';

import '../../../data/dummy_data.dart';
import '../../../utils/colors.dart';
import '../../../widgets/category_items/category_grid_items.dart';
import '../../models/category.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  void _categoriesScreen(BuildContext context, Category category) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(
        actions: [
          CustomPadding(
            top: 0,
            bottom: 0,
            left: 0,
            child: InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.profile);
              },
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border:
                        Border.all(color: appSchemeLight.primary, width: 2)),
                child: CircleAvatar(
                  backgroundColor: appSchemeLight.background,
                  child: Icon(
                    Icons.person,
                    color: appSchemeLight.primary,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: const CustomCarouselSlider(),
            ),
            Container(
              padding: const EdgeInsetsDirectional.only(top: 10, bottom: 10),
            ),
            CustomPadding(
              child: Column(
                children: [
                  SizedBox(
                    height: 500,
                    child: GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 30,
                      ),
                      children: [
                        for (final category in availableCategories)
                          CategoryGridItem(
                            onTap: () {
                              _categoriesScreen(context, category);
                            },
                            category: category,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
