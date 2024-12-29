import 'package:flutter/material.dart';

import '../images/app_images.dart';

class MyImages extends ThemeExtension<MyImages> {
  final String testImage;

  const MyImages({required this.testImage});

  @override
  ThemeExtension<MyImages> copyWith({String? testImage}) {
    return MyImages(
      testImage: testImage ?? this.testImage,
    );
  }

  @override
  ThemeExtension<MyImages> lerp(
    covariant ThemeExtension<MyImages>? other,
    double t,
  ) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(
      testImage: testImage,
    );
  }

  static const MyImages dark = MyImages(
    testImage: AppImages.testDark,
  );

  static const MyImages light = MyImages(
    testImage: AppImages.testLight,
  );
}
