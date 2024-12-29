import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test One Screen'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            context.pushNamed(AppRoutes.testTwo);
          },
          child: const Text('Go to Test Two Screen'),
        ),
      ),
    );
  }
}