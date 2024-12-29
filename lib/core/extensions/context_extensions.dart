import 'package:asroo_store/core/language/app_localizations.dart';
import 'package:asroo_store/core/style/theme/color_extension.dart';
import 'package:flutter/material.dart';

import '../style/theme/image_extension.dart';

extension ContextExtensions on BuildContext {
  // color
  MyColors get color {
    return Theme.of(this).extension<MyColors>()!;
  }

  // image
  MyImages get assets {
    return Theme.of(this).extension<MyImages>()!;
  }

  // language
  String translate(String langkey) {
    return AppLocalizations.of(this)!.translate(langkey).toString();
  }

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
        routeName, (route) => false,
        arguments: arguments);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
