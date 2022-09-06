import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: TextLiquidFill(
            text: 'Loading...',
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            loadDuration: const Duration(seconds: 6),
            // boxHeight: 300.0,
          ),
        ),
      ),
    );
  }
}
