import 'package:flutter/material.dart';

import '../colors/colors_dark.dart';
import '../colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    this.mainColor,
  });

  final Color? mainColor;

  @override
  ThemeExtension<MyColors> copyWith({Color? mainColor}) {
    return MyColors(
      mainColor: mainColor,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      mainColor: Color.lerp(mainColor, other.mainColor, t),
    );
  }

  static const MyColors dark = MyColors(
    mainColor: ColorDark.mainColor,
  );

  static const MyColors light = MyColors(
    mainColor: ColorLight.mainColor,
  );
}
