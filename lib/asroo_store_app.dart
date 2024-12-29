import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/app/env.variables.dart';
import 'package:asroo_store/core/common/screens/no_network_screen.dart';
import 'package:asroo_store/core/language/app_localizations_setup.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/core/style/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:
          ConnectivityController.instance.isInternetConnectedNotifier,
      builder: (_, isConnected, __) {
        if (isConnected) {
          return ScreenUtilInit(
            designSize: Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: EnvVariables.instance.isDev,
              title: 'Asroo Store',
              theme: themeLight(),
              locale: Locale('en'),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.testOne,
            ),
          );
        } else {
          return MaterialApp(
            title: 'Asroo Store',
            debugShowCheckedModeBanner: EnvVariables.instance.isDev,
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
