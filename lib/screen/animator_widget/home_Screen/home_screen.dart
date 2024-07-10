import 'package:flutter/material.dart';

class AnimatorWidgetsScreen extends StatefulWidget {
  const AnimatorWidgetsScreen({super.key});

  @override
  State<AnimatorWidgetsScreen> createState() => _AnimatorWidgetsScreen();
}

class _AnimatorWidgetsScreen extends State<AnimatorWidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatorWidgets'),
      ),
    );
  }
}
