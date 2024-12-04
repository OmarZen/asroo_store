import 'package:asroo_store/asroo_store_app.dart';
import 'package:asroo_store/core/app/env.variables.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AsrooStoreApp());
}

