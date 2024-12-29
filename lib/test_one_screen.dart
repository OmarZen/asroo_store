import 'package:asroo_store/core/extensions/context_extensions.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test One Screen'),
      ),
      body: Column(
        children: [
          Text(
            context.translate(LangKeys.appName),
            style: TextStyle(
              color: Colors.red,
              fontSize: 40,
            ),
          ),
          Image.asset(context.assets.testImage ?? ''),
          Center(
            child: MaterialButton(
              onPressed: () {
                context.pushNamed(AppRoutes.testTwo);
              },
              child: const Text('Go to Test Two Screen'),
            ),
          ),
          Text(
            context.translate(LangKeys.appName),
            style: TextStyle(
              color: context.color.mainColor,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
