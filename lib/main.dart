import 'package:flutter/material.dart';
import 'package:travel/ui/pages/get_started_page.dart';
import 'package:travel/ui/pages/sign_up_page.dart';
import 'package:travel/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/splahPage': (context) => const SplashPage(),
        '/getStarted': (context) => const GetStartedPage(),
        '/signUp': (context) => const SignUpPage(),
      },
    );
  }
}
