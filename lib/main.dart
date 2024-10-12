import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/utils/theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Monmatics',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      builder: (context, child) => SafeArea(child: child!),
      initialRoute: AppRoutes.splashscreen,
    );
  }
}
