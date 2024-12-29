import 'package:flutter/material.dart';

class TestTwoScreen extends StatelessWidget {
  const TestTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Two Screen'),
      ),
      body: const Center(
        child: Text('Welcome to Test Two Screen'),
      ),
    );
  }
}