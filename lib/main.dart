import 'package:flutter/material.dart';
import 'package:travel/ui/pages/get_started_page.dart';
import 'package:travel/ui/pages/loading.dart';
import 'package:travel/ui/pages/sign_up_page.dart';
import 'package:travel/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/splahPage': (context) => SplashPage(),
        '/getStarted': (context) => GetStartedPage(),
        '/signUp': (context) => SignUpPage(),
      },
    );
  }
}
