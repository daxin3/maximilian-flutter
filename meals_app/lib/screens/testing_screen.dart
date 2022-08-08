import 'package:flutter/material.dart';

class TestingScreen extends StatelessWidget {
  final Widget body;

  const TestingScreen({this.body});

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: body,
    ));
  }
}


// https://dev.to/didof/how-to-build-a-customscaffold-with-alternative-build-methods-in-flutter-30c4