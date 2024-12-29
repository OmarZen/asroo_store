import 'package:asroo_store/style/colors/colors_dark.dart';
import 'package:asroo_store/style/colors/colors_light.dart';
import 'package:asroo_store/style/theme/color_extension.dart';
import 'package:asroo_store/style/theme/image_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
      MyImages.dark,
    ],
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light,
      MyImages.light,
    ],
    useMaterial3: true,
  );
}
