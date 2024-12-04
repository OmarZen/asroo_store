import 'package:asroo_store/core/app/env.variables.dart';
import 'package:flutter/material.dart';

class AsrooStoreApp extends StatelessWidget {
  const AsrooStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.isDev,
      title: 'Asroo Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Asroo Store'),
        ),
        body: const Center(
          child: Text('Welcome to Asroo Store'),
        ),
      ),
    );
  }
}
