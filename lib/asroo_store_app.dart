import 'package:asroo_store/common/screens/no_network_screen.dart';
import 'package:asroo_store/core/app/connectivity_controller.dart';
import 'package:asroo_store/core/app/env.variables.dart';
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
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(builder: (context) {
                    ConnectivityController.instance.init();
                    return widget!;
                  }),
                );
              },
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('Asroo Store'),
                ),
                body: const Center(
                  child: Text('Welcome to Asroo Store'),
                ),
              ),
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
