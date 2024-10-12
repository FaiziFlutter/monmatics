import 'package:flutter/material.dart';
import 'package:monmatics/utils/colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      colorScheme: appSchemeLight,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      colorScheme: appSchemeDark,
    );
  }
}
